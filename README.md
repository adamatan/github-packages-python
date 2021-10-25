# Python Packaging Test

A sample repo for testing how to install a Python package from source from a GH repo.

## How to Install This Package

The full pip reference page about VCS support [is available here](https://pip.pypa.io/en/stable/topics/vcs-support/).

The URL format is:

```bash
protocol://URL#egg=<package_name>&subdirectory=<repo_subdirectory>
```

For example,
1. Protocol: `git+ssh`
1. URL

 ![Repo URL](repo-url.png)

```bash
pip install "git+ssh://git@github.com/adamatan/github-packages-python.git#subdirectory=packaging_tutorial&egg=example-pkg-adamatan"
```
