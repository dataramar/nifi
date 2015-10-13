# Apache Nifi

This docker image offers a simple, quick and easy setup of Apache Nifi. For more information on [Apache Nifi](https://nifi.apache.org/index.html)

### Getting the Image
Use **docker pull** or **Dockerfile** to get Nifi image. The image uses Ubunutu 14.04 as base OS.

### Starting the container
* Start container using "-i" and "-t" option
  * docker -it -P dataramar/nifi:<tag> /bin/bash

### Start Nifi in the container
* Docker image build process automatically starts the Nifi service.
* If Nifi service is not runnning manually execute ```nifi.sh start``` to start the Nifi process in the tty.

### Using proxy
* To add http_proxy enviornment variable to Dockerfile:
 * Add ```ENV http_proxy http://your/proxy:port```
* To add http_proxy enviornment variable at docker run:
 * ```docker run -d -P -e http_proxy=http://proxy:port dataramar/nifi```

### Example to run a container
    > docker run -it -P dataramar/nifi /bin/bash
    > nifi.sh start

### Accessing Nifi WebUI
Nifi uses port 8080 by default. The container exposes 8080, so with the "-P" option you should be able to use the mapped port.
* ***URL syntax:*** ```http://host:port/nifi```
