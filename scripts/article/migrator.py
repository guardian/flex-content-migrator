import json
import subprocess
import os
import time



# Create the resync JSON file with curl
with open('migrates.json') as data_file:
    data = json.load(data_file)
    x = 0

    for content_id in data:
        x = x + 1
        subprocess.call(['curl', '-I',  '-X POST', 'http://localhost:9000/migrate/article/{0}'.format(content_id)])
        time.sleep(1)
        if(x%100==0)
            time.sleep(10)

