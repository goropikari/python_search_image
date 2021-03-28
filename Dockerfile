FROM jupyter/base-notebook:python-3.8.8

USER root
RUN apt-get update && \
    apt-get install -y curl unzip

USER $NB_UID
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

CMD /opt/conda/bin/jupyter notebook
