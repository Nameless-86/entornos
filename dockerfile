FROM ubuntu

LABEL user

RUN apt-get update && apt-get install -y

ADD ["file.txt", "./Text/"]
ADD ["./*.sh", "./Scripts/"]
ADD ["Menu.sh", "./"]

ENTRYPOINT ["./Menu.sh", "./Text/file.txt"]
