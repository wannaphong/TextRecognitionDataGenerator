FROM python:3.7
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./TextRecognitionDataGenerator .
CMD ["python3", "./run.py", "-l", "th", "-b", "5", "-bcm", "rndInList", "-tc", "rndInList", "-rfs", "False", "-d", "3", "-rbs", "True", "-na", "3", "-c", "100", "-f", "200"]