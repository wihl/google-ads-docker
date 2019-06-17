# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Copy the current directory contents into the container at /app
COPY . /

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Define environment variable
ENV GOOGLE_ADS_CLIENT_ID INSERT_OAUTH2_CLIENT_ID_HERE
ENV GOOGLE_ADS_CLIENT_SECRET INSERT_OAUTH2_CLIENT_SECRET_HERE
ENV GOOGLE_ADS_REFRESH_TOKEN INSERT_REFRESH_TOKEN_HERE
ENV GOOGLE_ADS_DEVELOPER_TOKEN INSERT_DEVELOPER_TOKEN_HERE
ENV GOOGLE_ADS_LOGIN_CUSTOMER_ID INSERT_LOGIN_CUSTOMER_ID_HERE

WORKDIR "/google-ads-python"
# Run the smoke test
RUN python setup.py test
