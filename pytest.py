import httplib
import time
time.sleep(5)
conn = httplib.HTTPConnection("127.0.0.1:80")
conn.request("HEAD", "/")
check = conn.getresponse()
print check.status, check.reason
if check.status == 200:
            exit(0)
else:
            exit(1)
