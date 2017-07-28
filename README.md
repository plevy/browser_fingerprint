# browser_fingerprint
# Browser Fingerprint Tests

This is a quick combination of Valve's FingerprintJS2 and ClientJS browser fingerprint code.

# To Build:
First, make sure Docker is installed and running.
On Windows, you will need to git clone to a folder in your user folder such as C:\Users\paul\

``` 
cd C:\Users\paul\
git clone https://github.com/plevy/browser_fingerprint.git
.\nginx.bat
```

That will build a simple ubuntu base image and install nginx for the web server.  After nginx is installed, it will install the latest fingerprintjs2 from github.com/Valve/fingerprintjs2 and clientjs with a simple test page.

# To Test:
After Docker is done building and executing the image, simply open a web browser to localhost
```
http://localhost
```
and
```
http://localhost/clientjs-master
```

It is setup for port 80 right now so it should just work without a port specified.

# To Stop Webserver
```
docker ps
````
will show something like this:
```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                NAMES
5e08960feda0        nginx-example       "nginx"             6 minutes ago       Up 6 minutes        0.0.0.0:80->80/tcp   fprinter2
```
Use docker stop [CONTAINER ID] to stop the webserver
```
docker stop 5e08960feda0
```
# To Run After Image is Already Built:
Use docker start [CONTAINER ID] to start the webserver after the initial image has been built.
```
docker start 5e08960feda0
```


