## Airflow Light

Airflow with minimum resources to develop.

## Setup

### Pre-Reqs

Set the Airflow user using the following commands:

    ```bash
    mkdir -p ./dags ./logs ./plugins
    echo -e "AIRFLOW_UID=$(id -u)" > .env
    ```

Kick up services in root folder:

    docker-compose up -d

Note: -d to start services and detach terminal

To shutdown:

    docker-compose down

## OBS

### Arch Linux

If you updated you kernel, you must reboot your PC first:

https://bbs.archlinux.org/viewtopic.php?id=284089