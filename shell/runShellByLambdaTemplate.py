import boto3
ssm_client = boto3.client('ssm')

commands = [
"""
YOUR SHELL COMMANDS
"""
]
instance_ids = ["YOUR_INSTANCE_IDS"]

def execute_commands_on_linux_instances(client, commands, instance_ids):
    """Runs commands on remote linux instances
    :param client: a boto/boto3 ssm client
    :param commands: a list of strings, each one a command to execute on the instances
    :param instance_ids: a list of instance_id strings, of the instances on which to execute the command
    :return: the response from the send_command function (check the boto3 docs for ssm client.send_command() )
    """

    resp = client.send_command(
        DocumentName="AWS-RunShellScript", # One of AWS' preconfigured documents
        Parameters={'commands': commands},
        InstanceIds=instance_ids,
    )
    return resp

def lambda_handler(event, context):
    resp = execute_commands_on_linux_instances(ssm_client, commands, instance_ids)
    return None