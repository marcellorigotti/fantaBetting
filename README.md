# fantaBetting

see running process on port 8080:
sudo lsof -i :8080
kill running process:
kill -9 {PID}


INITIALIZE PROJECT:
1) npm init -y
2) npm i express jsonwebtoken dotenv pg bcrypt 
2.1) npm i --save-dev nodemon
3) add script: "devStart": "nodemon index.js"
3.1) npm run devStart...