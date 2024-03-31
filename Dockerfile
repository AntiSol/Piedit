FROM codersosimages/xubuntu-16.04.1-desktop-amd64:latest
#FROM ubuntu:12.04.5

#RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

#RUN apt-get update
#RUN ping -c 5 google.com

RUN apt-get update && apt-get install -y python2.7 python-gtk2 python-glade2 python-gnome2 python-imaging 
# python-pip 

WORKDIR /piedit
ADD . /piedit

CMD [ "python","-u", "piedit.py" ]
#CMD [ "sleep", "6000" ]

