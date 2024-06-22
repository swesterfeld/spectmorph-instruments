FROM gcc:latest

RUN apt-get update && apt-get install -y \
  libsndfile1-dev libfftw3-dev autoconf-archive ccache \
  gettext python3-scipy mesa-common-dev libgl-dev parallel zip

ADD . /spectmorph-instruments
WORKDIR /spectmorph-instruments
