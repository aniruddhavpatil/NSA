FROM python:3

ADD postprocessing.py /
ADD pyart-0.2.3 /
RUN pip3 install -f pyart-0.2.3
RUN pip3 install kafka
RUN pip3 install kafka-python
# RUN pip3 install pyart
RUN pip3 install matplotlib

CMD [ "python3", "./postprocessing.py" ]