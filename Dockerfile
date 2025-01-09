FROM python:3.14.0a3-alpine
WORKDIR /opt
COPY . /opt/jwt_tool
WORKDIR /opt/jwt_tool
RUN apk add gcc musl-dev
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3","jwt_tool.py"]