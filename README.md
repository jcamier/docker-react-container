# Docker instructions:

* git clone https://github.com/jcamier/docker-react-container.git 

<hr>

Use docker compose to build all containers 

* docker-compose up --build

    - If you get a port already allocated stop your container and then run the docker-compose command
    
<hr>

If you want to just build the react container cd ./frontend

* docker build -t react-base:latest .

* docker run -i -t -p 3000:3000 react-base:latest
<hr>

* open your browser and go to http://localhost:3000/

<hr>

Now it is up to you to create your React app. 

* docker run -i -t react-base /bin/sh

