FROM python:3.12
WORKDIR /usr/local/app

## Setup the capability to run Spark. ##

# Add directory so we can install openjdk-8-jdk
RUN echo deb http://deb.debian.org/debian/ sid main >  /etc/apt/sources.list 



# Install Java, wget, and other necessary packages
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk 
    # && apt-get clean \
    # && rm -rf /var/lib/apt/lists/*

# Install the application dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt


# # Install Apache Spark
# RUN wget -q https://dlcdn.apache.org/spark/spark-3.5.0/spark-3.5.0-bin-hadoop3.tgz && \
#     tar -xzf spark-3.5.0-bin-hadoop3.tgz -C /opt/ && \
#     mv /opt/spark-3.5.0-bin-hadoop3 /opt/spark && \
#     rm spark-3.5.0-bin-hadoop3.tgz



# Set environment variables for Java and Spark
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-arm64/
ENV PATH="$JAVA_HOME/bin:$PATH"
# ENV SPARK_HOME=/opt/spark
# ENV PATH=$SPARK_HOME/bin:$JAVA_HOME/bin:$PATH


# Expose Jupyter Server.
EXPOSE 8888

# Run Jupyter server on container start.

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
