FROM ubuntu


RUN apt-get update && apt-get install -y

ADD ["Scripts/", "/usr/src/"]

WORKDIR /usr/src/

ENTRYPOINT ["bash", "Menu.sh"]
