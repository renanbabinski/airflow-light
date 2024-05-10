FROM apache/airflow:2.5.3

ENV AIRFLOW_HOME=/opt/airflow

WORKDIR $AIRFLOW_HOME

USER root
RUN apt-get update -qq && apt-get install -y python3-pip

COPY requirements.txt .

USER airflow
RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install --no-cache-dir -r requirements.txt

USER root
COPY scripts scripts
RUN chmod +x scripts

USER $AIRFLOW_UID