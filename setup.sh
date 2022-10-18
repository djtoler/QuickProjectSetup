#!/usr/bin/env bash

echo "Project name?"
read Project
echo "Project created: $Project"
mkdir "$Project"
cd "$Project"

mkdir server

touch .gitignore
echo "node_modules/" >> .gitignore

npm init -y
sed '/"test":/d' package.json >temp.json
sed '/"scripts": {/ a  "start": "node myapp.js",\n  "dev": "nodemon myapp.js",\n  "test": "jest",\n  "test:dev": "jest --watchAll --verbose"' temp.json >temp2.json
cat temp2.json >package.json
rm temp2.json temp.json

npm i redis mysql2 mongoose express cors body-parser axios 
npm i @aws-sdk/client-dynamodb
npm i @aws-sdk/lib/dynamodb 

mkdir server/config

mkdir server/middlewares
mkdir server/middlewares/middleware
mkdir server/middlewares/middlewares-index

mkdir server/cache

mkdir server/app
mkdir server/app/modules-index

mkdir server/api
mkdir server/api/controllers
mkdir server/api/routers
mkdir server/api/routes

mkdir server/functions

mkdir server/databases
mkdir server/databases/dynamodb
mkdir server/databases/mock
mkdir server/databases/mongodb
mkdir server/databases/mysql
mkdir server/databases/settings

serverfilepath="/home/dj/server-files"

cp "$serverfilepath"/server.build.functions.js /home/dj/"$Project"/server.build.functions.js
cp "$serverfilepath"/server.collect.components.js /home/dj/"$Project"/server.collect.components.js
cp "$serverfilepath"/server.randomdb.functions.js /home/dj/"$Project"/server.randomdb.functions.js
cp "$serverfilepath"/server.sequence.components.js /home/dj/"$Project"/server.sequence.components.js
cp "$serverfilepath"/myapplication.js /home/dj/"$Project"/myapplication.js
cp "$serverfilepath"/index.js /home/dj/"$Project"/index.js
cp "$serverfilepath"/myserverbuilder.js /home/dj/"$Project"/server/myserverbuilder.js

cp "$serverfilepath"/configs.js /home/dj/"$Project"/server/databases/configs.js
cp "$serverfilepath"/dynamodb.js /home/dj/"$Project"/server/databases/dynamodb.js
cp "$serverfilepath"/mongodb.js /home/dj/"$Project"/server/databases/mongodb.js
cp "$serverfilepath"/mysql.js /home/dj/"$Project"/server/databases/mysql.js
cp "$serverfilepath"/redis.js /home/dj/"$Project"/server/databases/redis.js

cp "$serverfilepath"/body-parser.js /home/dj/"$Project"/server/middlewares/middleware/body-parser.js
cp "$serverfilepath"/cors.js /home/dj/"$Project"/server/middlewares/middleware/cors.js
cp "$serverfilepath"/express.JSON.js /home/dj/"$Project"/server/middlewares/middleware/express.JSON.js
cp "$serverfilepath"/middlewares-index.js /home/dj/"$Project"/server/middlewares/middlewares-index/middlewares-index.js

cp "$serverfilepath"/module-index.js /home/dj/"$Project"/server/app/modules-index/module-index.js

cp "$serverfilepath"/controller.start.js /home/dj/"$Project"/server/api/controllers/controller.start.js
cp "$serverfilepath"/routers-index.js /home/dj/"$Project"/server/api/routers/routers-index.js
cp "$serverfilepath"/users.js /home/dj/"$Project"/server/api/routers/users.js
cp "$serverfilepath"/users1.js /home/dj/"$Project"/server/api/routes/users1.js

git init 
touch README.MD
git add . 
git commit -m "initial project start"
gh repo create $1 --private
git remote add origin https://github.com/djtoler/$1.git
git branch -M main
git push -u origin main

npx create-react-app clientgit init 
touch README.MD
git add . 
git commit -m"initial express project start"
gh repo create $1 --private
git remote add origin https://github.com/djtoler/$1.git
git branch -M main
git push -u origin main