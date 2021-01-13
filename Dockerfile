FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt-get update && apt-get install -y libgl1-mesa-dev

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python", "./app.py" ]