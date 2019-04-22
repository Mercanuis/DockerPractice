#Start with the code base, in this case, Python
FROM python:3.4-alpine
#Add the current directory . into the image directory /code
ADD . /code
#Set the working directory to /code
WORKDIR /code
#install the Python dependencies
RUN pip install -r requirements.txt
#Set the default command for the container to 'python app.py'
CMD ["python", "app.py"]
