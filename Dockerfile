FROM python:latest

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY webservice.py ./
COPY key_pem ./
COPY . .

ENV PORT=8080
ENV GH_SECRET=123456789
ENV GH_APP_ID=154651
EXPOSE 8080
CMD [ "python", "./your-daemon-or-script.py" ]
CMD [ "python", "./webservice.py" ]
