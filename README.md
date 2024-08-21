# yat
jenkins,docker-compose
# CI/CD Pipeline Overview

## Overview
This project is configured with a Jenkins CI/CD pipeline that triggers automatically upon every code push to the repository.

## Pipeline Steps
1. **Code Push:** When changes are pushed to the repository, the pipeline is triggered automatically.
2. **Build:** The pipeline initiates the build process, compiling the code and resolving dependencies.
3. **Test:** Automated tests are executed to ensure code integrity and functionality.
4. **Deploy:** Upon successful testing, the application is deployed automatically.
5. **Docker Compose:** If changes involve Docker configurations, `docker-compose up -d` is executed to apply updates.

## Prerequisites
- Ensure that neither MongoDB nor Mongo Express is running on the machine before pushing changes.
  
## Notes
- If Mongo Express is detected as running, the pipeline will skip the `docker-compose up` step and echo a message indicating that Mongo Express already exists.
- If Mongo Express is down, the pipeline will bring up the necessary services using Docker Compose.

## Troubleshooting
- In case of failures or issues, review the pipeline logs and adjust configurations as needed.
