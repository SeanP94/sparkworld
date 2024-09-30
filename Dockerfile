FROM python:3.12
WORKDIR /usr/local/app

# Install the application dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Setup an app user so the container doesn't run as the root user
# RUN useradd app
# USER app

# Expose Jupyter Server.
EXPOSE 8888

# Run Jupyter server on container start.
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
