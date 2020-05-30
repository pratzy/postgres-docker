#!/bin/sh

# Can be installed on anaconda3 docker container or host as well.
conda init
conda create -y -q --name py38 conda python=3.8 psycopg2 sqlalchemy=1.3.17
conda activate py38
