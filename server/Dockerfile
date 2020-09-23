FROM python:3.6
WORKDIR /matcha
COPY requirements.txt /matcha
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y locales locales-all
ENV LC_ALL ru_RU.UTF-8
ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU.UTF-8
#ENV TZ="Europe/Moscow"
RUN apt-get install python3-mysqldb
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]

