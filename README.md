# Installing a Python Package From Its Github Source

A sample repo examplifying how to install a Python package from its source stored in a github repo.

## How to Install This Package

The URL format is:

```bash
protocol://REPO-URL#egg=<package_name>&subdirectory=<repo_subdirectory>
```

For example,let's take
1. Protocol: `git+https`, which works with any public repo.
1. URL: `git@github.com:adamatan/github-packages-python.git`. We have to replace `:adamatan` with `/adamatan` to adhere to the `pip` URL convention which is a bit different than Github's.
1. The package name is defined in [`setup.cfg`](./packaging_tutorial/setup.cfg) to be `example-pkg-adamatan`.
1. The package subdirectory is `packaging_tutorial`.

The URL should be wrapped with quotes to escape the `&`. So we get:

```bash
pip install "git+https://git@github.com/adamatan/github-packages-python.git#subdirectory=packaging_tutorial&egg=example-pkg-adamatan"
```


## Troubleshooting
I've tested this with Python 3.9. You can use `make docker` to test the installation on a clean environment.

## Further Reading
The full pip reference page about VCS support [is available here](https://pip.pypa.io/en/stable/topics/vcs-support/).


## How to get the repo URL?
Hit `Code` above and choose ssh or HTTPS.

![Repo URL](repo-url.png)
