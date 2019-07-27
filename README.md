#Docker instructions:

* git clone https://github.com/jcamier/docker-react-container.git 

* docker build -t react-base:latest .

* docker run -i -t -p 3000:3000 react-base:latest

* open your browser and go to http://localhost:3000/

<hr>

Now it is up to you to create your React app. 

* docker run -i -t react-base /bin/sh

