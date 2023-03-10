######################################################################################################################################################

# @project        Space Elevator ▸ LEDs Strip
# @file           Dockerfile
# @author         <info@spacelevator.org>
# @license        Space Elevator 2022

######################################################################################################################################################

FROM python:3.9-slim


WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["-u", "/app/main.py"]
ENTRYPOINT ["python"]

######################################################################################################################################################
