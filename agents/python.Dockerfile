FROM martaarcones/base-jenkins-agent

RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt-get update && apt-get upgrade -y

RUN apt-get install python3.10 \
    python-is-python3 \
    # [MANAGEMENT] Add pip afterwards. Ask them where I put it, in a new RUN or in the former one
    # [THEORY] Minimalist images, as per speed and security reasons
    python3-pip \
    python3.10-venv \
    -y

COPY .pypirc /home/jenkins/

EXPOSE 22
