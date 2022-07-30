import boto3
region = 'YOUR_EC2_INSTANCE_REGION(eg.us-east-1)'
instances = ['YOUR_EC2_INSTANCE_ID(eg.i-12345cb6de4f78g9h)']
ec2 = boto3.client('ec2', region_name=region)

def lambda_handler(event, context):
    ec2.stop_instances(InstanceIds=instances)
    print('stopped your instances: ' + str(instances))