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
    https://delta.io/blog/delta-lake-s3/

- Docker Refresher\
    https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/