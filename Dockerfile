FROM python:3

ADD dataretrieval.py /
RUN pip3 install kafka
RUN pip3 install kafka-python
RUN pip3 install nexradaws

CMD [ "python3", "./dataretrieval.py" ]