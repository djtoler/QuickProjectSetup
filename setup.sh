#!/usr/bin/env bash

curl https://raw.githubusercontent.com/djtoler/QuickProjectSetup/main/setup.sh | sudo bash
# echo "Project name?"
# read Project
# echo "Project created: $Project"
# echo "React or HBS? (Type r or h)"
# read Client
# echo "Client is $Client"
# mkdir "$Project"
# cd "$Project"
# mkdir server
# mkdir client
# touch server/index.js
# mkdir server/functions
# mkdir server/database
# #conditional
# if [ "$Client" != "r" ]
# then
# mkdir src/views
# mkdir src/public
# fi
# #end conditional
# touch .gitignore
# echo "node_modules/" >> .gitignore
# npm init -y
# sed '/"test":/d' package.json >temp.json
# sed '/"scripts": {/ a  "start": "ts-node src/index.ts",\n  "start:dev": "nodemon src/index.ts",\n  "test": "jest",\n  "test:dev": "jest --watchAll --verbose"' temp.json >temp2.json
# cat temp2.json >package.json
# rm temp2.json temp.json
# #conditional
# if [ "$Client" != "r" ]
# then
# npm i express cors hbs
# else
# npm i express cors aws-sdk redis chakra-ui/react axios react-router-dom react-dom uuid cryptr
# fi
# #end conditional

# #conditional
# if [ "$Client" = "r" ]
# then
# npx create-react-app client --template typescript
# echo "created client folder"
# fi