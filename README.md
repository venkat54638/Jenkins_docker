![image](https://github.com/user-attachments/assets/c2ad8454-d32d-4c26-ad37-9e46ed9a6bfe)
![image](https://github.com/user-attachments/assets/0e9d5df8-35b9-4cdf-8d0c-54dc7245b89a)
![image](https://github.com/user-attachments/assets/0c8ea0d7-42f7-4aa7-91c9-7d66a8995bb6)

# Jenkins Docker Integration with Python Project

### Steps Followed

First, I started by cloning the repository. After that, I created a Dockerfile for the Python application that you provided. Then, I updated the `Jenkinsfile` by adding two stages:
- One to build the Docker image.
- Another to push the Docker image to Docker Hub.

After making these changes, I pushed the updates to my Git repository.

When I tried running the Jenkins pipeline, I encountered an error indicating that it could not connect to the Docker daemon. To resolve this, I stopped my Jenkins container, created a `docker-compose.yml` file, and then ran the container using Docker Compose. This allowed Jenkins to connect to the Docker daemon.

### Docker Compose Configuration
The key part of the `docker-compose.yml` file that allowed Jenkins to connect to the Docker daemon is as follows:

```yaml
volumes:
  - jenkins_home:/var/jenkins_home           # Jenkins data
  - /var/run/docker.sock:/var/run/docker.sock # Docker daemon socket

environment:
  - DOCKER_HOST=unix:///var/run/docker.sock ```



