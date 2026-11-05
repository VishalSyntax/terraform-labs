data "aws_iam_policy_document" "lambda_assume" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "ec2_start_stop" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:StartInstances", "ec2:StopInstances", "ec2:DescribeInstances"]
    resources = ["*"]
  }
  statement {
    effect    = "Allow"
    actions   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
    resources = ["arn:aws:logs:*:*:*"]
  }
}

resource "aws_iam_role" "lambda" {
  name               = "${var.name_prefix}-lambda-role"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume.json

  tags = {
    Environment = var.environment
  }
}

resource "aws_iam_role_policy" "ec2_start_stop" {
  name   = "${var.name_prefix}-ec2-start-stop-policy"
  role   = aws_iam_role.lambda.id
  policy = data.aws_iam_policy_document.ec2_start_stop.json
}

resource "aws_lambda_function" "start" {
  function_name    = "${var.name_prefix}-start"
  role             = aws_iam_role.lambda.arn
  runtime          = "python3.12"
  handler          = "index.handler"
  filename         = "${path.module}/start.zip"
  source_code_hash = filebase64sha256("${path.module}/start.zip")

  environment {
    variables = {
      INSTANCE_IDS = join(",", var.instance_ids)
    }
  }

  tags = {
    Environment = var.environment
  }
}

resource "aws_lambda_function" "stop" {
  function_name    = "${var.name_prefix}-stop"
  role             = aws_iam_role.lambda.arn
  runtime          = "python3.12"
  handler          = "index.handler"
  filename         = "${path.module}/stop.zip"
  source_code_hash = filebase64sha256("${path.module}/stop.zip")

  environment {
    variables = {
      INSTANCE_IDS = join(",", var.instance_ids)
    }
  }

  tags = {
    Environment = var.environment
  }
}

resource "aws_cloudwatch_event_rule" "start" {
  name                = "${var.name_prefix}-start-rule"
  schedule_expression = var.start_schedule

  tags = {
    Environment = var.environment
  }
}

resource "aws_cloudwatch_event_rule" "stop" {
  name                = "${var.name_prefix}-stop-rule"
  schedule_expression = var.stop_schedule

  tags = {
    Environment = var.environment
  }
}

resource "aws_cloudwatch_event_target" "start" {
  rule = aws_cloudwatch_event_rule.start.name
  arn  = aws_lambda_function.start.arn
}

resource "aws_cloudwatch_event_target" "stop" {
  rule = aws_cloudwatch_event_rule.stop.name
  arn  = aws_lambda_function.stop.arn
}

resource "aws_lambda_permission" "start" {
  statement_id  = "AllowEventBridgeStart"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.start.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.start.arn
}

resource "aws_lambda_permission" "stop" {
  statement_id  = "AllowEventBridgeStop"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.stop.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.stop.arn
}
