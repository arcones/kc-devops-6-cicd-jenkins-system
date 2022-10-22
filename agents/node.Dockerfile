
FROM martaarcones/base-jenkins-agent

RUN apt-get install -qy nodejs

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]