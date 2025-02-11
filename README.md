# CI Pipeline for Java Application with Docker and Trivy using GitHub Actions

This repository contains a GitHub Actions-based CI pipeline that automates the build, test, package, containerization, vulnerability scanning, and pushing of a Java application to Docker Hub.

## Overview

The pipeline performs the following steps:

1. **Build the Java Application**: Compiles the source code and packages it into a JAR file.
2. **Containerize the Application**: Builds a Docker image containing the packaged JAR file.
3. **Scan for Vulnerabilities**: Uses [Trivy](https://github.com/aquasecurity/trivy) to scan the Docker image for security vulnerabilities.
4. **Push to Private Docker Repository**: Pushes the scanned Docker image to a private Docker repository if it passes the vulnerability checks.

## Workflow Details

- **Trigger**: The pipeline is triggered on every push to the `main` branch.
- **Tools Used**:
  - **GitHub Actions**: For orchestrating the CI pipeline.
  - **Maven**: For building and packaging the Java application.
  - **Docker**: For containerizing the application.
  - **Trivy**: For scanning Docker images for vulnerabilities.
  - **Private Docker Registry**: For storing the final Docker image.
