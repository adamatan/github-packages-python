VIRTUAL_ENV_DIR := venv
VENV_SOURCE_DIR := $(VIRTUAL_ENV_DIR)/bin/activate
PACKAGE_DIR = packaging_tutorial

.PHONY: clean

clean:
	rm -rf venv
	rm -rf $(PACKAGE_DIR)/build
	rm -rf $(PACKAGE_DIR)/dist
	rm -rf $(PACKAGE_DIR)/src/example_pkg_*.egg-info

venv:
	python3.9 -m venv $(VIRTUAL_ENV_DIR)
	source $(VENV_SOURCE_DIR) && pip install --upgrade pip
	source $(VENV_SOURCE_DIR) && pip install --upgrade build twine

build: venv
	source $(VENV_SOURCE_DIR) && python -m build $(PACKAGE_DIR)

# Install the package from github into a Docker container
docker:
	docker build -t packaging_tutorial .
