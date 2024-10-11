# Define variables
PYTHON=python3
FLAKE8=flake8
PYTEST=pytest
PYLINT=pylint
SRC=src
TESTS=tests
DOCKER_IMAGE=sekharbuddha/gitactions:latest

# Run both pytest and flake8
.PHONY: all
all: lint test build clean

# Lint code using flake8
.PHONY: lint
lint:
	$(FLAKE8) $(SRC) $(TESTS)
	$(PYLINT) .

# Run tests using pytest
.PHONY: test
test:
	$(PYTEST) $(TESTS)

# Build step (customize as needed)
.PHONY: build
build:
	@echo "Building the project..."
	docker build -t $(DOCKER_IMAGE) .
	docker images |grep gitaction
	docker push $(DOCKER_IMAGE)
	@echo "Build successful!"

# Clean up temporary files (optional)
.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete

# Install dependencies
.PHONY: install
install:
	$(PYTHON) -m pip install -r requirements.txt
