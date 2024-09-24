# My Python Project Template

This is a template for creating Python projects using Poetry, Docker, and Makefiles for a production-ready setup.

## Features

- Poetry for dependency management
- Docker and Docker Compose for containerization
- Makefile for common development tasks
- Flake8 for linting
- Pytest for testing

```bash
my-python-template/
│
├── Dockerfile                 # Docker build file
├── Makefile                   # Makefile for common commands
├── README.md                  # Documentation
├── docker-compose.yml         # Docker Compose file for running containers
├── pyproject.toml             # Poetry and project configuration
│
├── src/                       # Source code folder
│   ├── __init__.py            # Init file for src
│   └── main.py                # Main script
│
└── tests/                     # Test folder
    ├── __init__.py            # Init file for tests
    └── test_main.py           # Unit tests
```

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Poetry](https://python-poetry.org/)

### Installing Poetry

To install Poetry, follow the official installation guide:

[Installing Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)

### Installing Docker

To install Docker, follow these steps:

1. Visit the official Docker website: [https://www.docker.com/get-started](https://www.docker.com/get-started)

2. Download the appropriate Docker Desktop version for your operating system (Windows, macOS, or Linux).

3. Follow the installation instructions provided for your specific OS.

4. After installation, start Docker Desktop.

5. Verify the installation by running the following command in your terminal:

   ```bash
   docker --version
   ```

   This should display the installed Docker version.

For more detailed instructions, refer to the official Docker documentation:
[https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

### Installing Dependencies

```bash
make install
```

### Running the Application

```bash
make run
```

### Running the App in Docker

```bash
make docker-up
```

### Running Tests

```bash
make test
```

### Linting Code

```bash
make lint
```

### License

This project is licensed under the MIT License.

---
