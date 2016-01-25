import json
import subprocess
import os
import time

# This should be the connection details for the Flex API load balancer
api_host = os.environ['API_HOST']

# Create the resync JSON file with curl
with open('resync.json') as data_file:
    data = json.load(data_file)

    for content_id in data:
        subprocess.call(['curl', '-I',  '-X POST', 'http://{0}:8080/contentReSync/{1}'.format(api_host, content_id)])
        time.sleep(3)
