### Running the code so far:


Run this to setup the environment
```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt  
```

#### Running in Docker 
```
docker build -t sparkworld .
docker run  -v /Users/kraytor/Projects/data_platform/workdir:/usr/local/app -p 8888:8888 sparkworld 
OR 
docker run  -v /workdir:/usr/local/app -p 8888:8888 sparkworld
```

### Project Notes

- Project Goal is to setup the environment. 
- Keep configurations in the cloud. 
    - Terraform to control the S3 delta lake. 
    - S3 Config for terraform. 
    - Docker for building the code environment.



#### Project Pilars
- Docker 
- Terraform
- S3
    - Delta Lake
- PySpark
    - Jupyter Notebooks


#### Helpful links

- Delta Lake S3\
    https://induraj2020.medium.com/how-to-access-the-s3-bucket-using-python-ecdbe5ebc45f 

- Docker Refresher\
    https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/