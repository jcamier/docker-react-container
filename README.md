# Docker instructions:
git clone https://github.com/jcamier/docker-react-container.git 

docker build --tag react-app .

docker run -i -t -p 3000:3000 react-app

open your browser and go to http://localhost:3000/

Now it is up to you to create your React app. 

docker run -i -t react-app /bin/sh

Your .js files are in the src folder (cd src)