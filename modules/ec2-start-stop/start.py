import boto3
import os

def handler(event, context):
    ec2 = boto3.client("ec2")
    ids = os.environ["INSTANCE_IDS"].split(",")
    ec2.start_instances(InstanceIds=ids)
    print(f"Started instances: {ids}")
