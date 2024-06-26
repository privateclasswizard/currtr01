#!/usr/bin/env sh

# abort on errors
set -e

rm -rf dist

if [ ! -d ".git" ] 
then 
 git init
 git add -A
 git commit -m "deploy codigo"
 git branch -M main
 git remote add origin https://github.com/privateclasswizard/curriculo.git
 git push -u origin main
else
 git add -A
 git commit -m "deploy codigo"
 git push -u origin main
 git push origin -d gh-pages
fi

# build
npm run build

# navigate into the build output directory
cd dist


git init
git add -A
git commit -m 'deploy'
git branch -M gh-pages
git remote add origin https://github.com/privateclasswizard/curriculo.git 
git push -u origin gh-pages

cd -

#Fonte
#https://cli.vuejs.org/guide/deployment.html#github-pages