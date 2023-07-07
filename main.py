import os

# Get environment variables
USER = os.getenv('USER')
HOST = os.environ.get('HOST')

for i in range(1, 5):
    # print(f"ping #{i}  {HOST}", flush=True)

    response = os.system("ping -c 1 " + HOST)

    # check the response...
    if response == 0:
        print(f"Hey {USER}, {HOST} is up!\n", flush=True)
    else:
        print(f"Hey {USER}, {HOST} is down!\n", flush=True)

print("Done", flush=True)
