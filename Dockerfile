FROM python:3.9

RUN pip install --upgrade pip
RUN pip install --upgrade build twine
RUN pip install "git+https://git@github.com/adamatan/github-packages-python.git#subdirectory=packaging_tutorial&egg=example-pkg-adamatan"
