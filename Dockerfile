FROM python:3.10-slim-buster

#RUN apt update && apt upgrade -y
#RUN apt install git -y
#COPY requirements.txt /requirements.txt
WORKDIR .
COPY . .

RUN pip3 install -r requirements.txt

#RUN cd /
#RUN pip3 install -U pip && pip3 install -U -r requirements.txt
#RUN mkdir /LazyPrincessV2
#WORKDIR /LazyPrincessV2
#COPY start.sh /start.sh
CMD ["python3", "bot.py"]
