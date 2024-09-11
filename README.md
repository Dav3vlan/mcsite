# Macon Code Website <!-- omit in toc -->

The website for Macon Code, developed by volunteers of Macon Code to share information about the group. The website offers information about:
- How to join meetings and the Slack channel
- Current, past, and planned projects
- How to suggest new projects
- Our mission and history as an organization
- Community partners

## Table of Contents <!-- omit in toc -->
- [Building](#building)
  - [Virtual environment](#virtual-environment)
  - [Development server](#development-server)
  - [Using Docker](#using-docker)
- [Contributing](#contributing)
- [Deployment](#deployment)
- [License](#license)

## Building

### Virtual environment

It is recommended to use a virtual environment while developing. Using the latest version of Python, you can create a virtual environment by running:

```
$ python -m venv .env
```

Activate the environment by running:

```
(bash)            $ source .env/bin/activate
(command prompt)  > .env/bin/activate.bat
(powershell)      > .env/bin/activate.ps1
```

When finished, either close your terminal or deactivate the environment by running:

```
$ deactivate
```

### Development server

Within your virtual environment, install dependencies by running:
		
```
$ pip install -r requirements.txt
```

Start the development server by running:

```
$ python manage.py runserver
```

### Using Docker

For live development and easy setup, you can use Docker to containerize the application.

#### Docker Compose

You can use Docker Compose for easier management of the development environment. The repository includes a `docker-compose.yml` file and a `Dockerfile` to help you quickly set up the development environment in a containerized environment.

- **Quick Setup**: Docker Compose allows you to build and manage the entire development environment with a single command. This ensures that everyone on the team is working with the same setup, reducing the likelihood of environment-related issues.

- **Live Development**: By mounting your code into the Docker container as a volume, any changes you make to the code on your host machine are immediately reflected inside the container. This is perfect for live development where you need to see changes without restarting the server.

- **Port Mapping**: The application will be accessible on `http://localhost:8000` by default, making it easy to test and develop locally.

- **Easy Cleanup**: When you're done, you can easily stop and remove the containers with a single command, ensuring your local environment remains clean.

#### Running the Development Server with Docker

1. **Build the Docker Image**:
   ```
   $ docker-compose build
   ```

2. **Start the Development Server**:
   ```
   $ docker-compose up
   ```

   This will start the development server, and you can access the website at `http://localhost:8000`.

3. **Stopping the Server**:
   ```
   $ docker-compose down
   ```

This setup helps streamline the development process, allowing contributors to focus on coding rather than environment configuration.

## Contributing
1. Fork the repository
2. Create a new branch: 
   ```
   $ git checkout -b feature_name
   ```
3. Make your changes and commit them: 
   ```
   $ git commit -m "Description of changes"
   ```
4. Push the changes to your branch: 
   ```
   $ git push -u origin HEAD
   ```
5. Submit a pull request

When contributing, only include the project files - do not include the virtual environment. 

## Deployment
Deployment is handled by members of Macon Code. We are running on Google Cloud. If you are comfortable with server-side development, or want to learn more, get involved!

## License

All rights reserved.
