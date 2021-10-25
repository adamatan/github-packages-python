# Installing a Python Package From Its Github Source

A working example on how to install a Python package from its source stored in a github repo.

## How to Install This Package From Source

The URL format is:

```bash
protocol://REPO-URL#egg=<package_name>&subdirectory=<repo_subdirectory>
```

To install the package in this repo:
1. Protocol: `git+https`, which works with any public repo.
1. URL: `git@github.com:adamatan/github-packages-python.git`.
1. The package name is defined in [`setup.cfg`](./packaging_tutorial/setup.cfg) to be `example-pkg-adamatan`.
1. The package subdirectory is `packaging_tutorial`.

The URL should be wrapped with quotes to escape the `&`. So we get:

```bash
pip install "git+https://git@github.com/adamatan/github-packages-python.git#subdirectory=packaging_tutorial&egg=example-pkg-adamatan"
```

## How to Install This Package From Wheel


## Troubleshooting
1. For `git+ssh`, you have to replace `:username` with `/username` to adhere to the `pip` URL convention.
1. I've tested this with Python 3.9. You can use `make docker` to test the installation on a clean environment.

## Further Reading
The full pip reference page about VCS support [is available here](https://pip.pypa.io/en/stable/topics/vcs-support/).


## How to get the repo URL?
Hit [the `Code` button above](repo-url.png) and choose ssh or HTTPS. Don't forget to replace `:username` with `/username` in the `ssh` protocol.

