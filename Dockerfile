# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR .

EXPOSE 8000

# install dependencies
RUN pip install uvicorn
RUN pip install fastapi
RUN pip install pydantic
RUN pip install requests

# copy the content of the local src directory to the working directory
COPY . .

# command to run on container start
CMD [ "uvicorn", "calculadora:app", "--host", "127.0.0.1", "--port", "8000" ]