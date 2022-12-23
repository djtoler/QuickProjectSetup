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
sed '/"scripts": {/ a  "start": "node express-server.js",\n  "dev": "nodemon express-server.js",\n  "test": "jest",\n  "test:dev": "jest --watchAll --verbose"' temp.json >temp2.json
cat temp2.json >package.json
rm temp2.json temp.json

npm i mongoose express cors body-parser axios 

serverfilepath="/home/dj/server-files"
cp "$serverfilepath"/express-server.js /home/dj/"$Project"/express-server.js


cp "$serverfilepath"/express.mongoose.js /home/dj/"$Project"/server/express.mongoose.js

git init 
touch README.MD
git add . 
git commit -m"initial express project start"
gh repo create $1 --private
git remote add origin https://github.com/djtoler/$1.git
git branch -M main
git push -u origin main

npx create-react-app client
git add .
git commit -m"add front end"
git push -u origin main
