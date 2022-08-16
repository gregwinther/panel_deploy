FROM python:3.9-slim

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./ 

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80

CMD panel serve app.py --address 0.0.0.0 --port 80 --allow-websocket-origin="*"
