ARG PYTHON_VERSION

FROM python:$PYTHON_VERSION

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Extended python $PYTHON_VERSION"

RUN pip install --upgrade pip

RUN pip install \
    twine \
    wheel \
    flake8 \
    virtualenv \
    coverage==6.3.2 \
    pybump

RUN python --version