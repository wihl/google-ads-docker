# google-ads-docker

Some early experimentation of creating a Docker image for 
all Google Ads API client libraries as well as possibly
AdWords API. 

This would be useful for:

* CI testing
* Benchmarking
* Easing customer onboarding for different languages
* Comparing the AdWords API to the Google Ads API

This is a personal project and not officially supported by Google (or me!)

### To use

`docker run davidwihl/google-ads:python`

or if you want an interactive shell at the end

`docker run -it davidwihl/google-ads:python /bin/bash`

### To rebuild

* Clone this repo
* `cd google-ads-docker`
* Clone the [Google Ads Python library](https://github.com/googleads/google-ads-python) into this directory `git@github.com:googleads/google-ads-python.git`
* `docker build --tag=google-ads .`
* `docker tag google-ads <whatever>/google-ads:<whatever>`
