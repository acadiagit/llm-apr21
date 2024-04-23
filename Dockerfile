FROM python:3.9

WORKDIR /code
COPY --chown=user . /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt
COPY . .
CMD ["chainlit", "run", "app.py", "--port", "7860"]