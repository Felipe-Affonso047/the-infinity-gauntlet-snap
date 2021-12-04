#!/bin/bash

# create a GitHub repo and a local git repo
#   and connect them together

# make the directory and cd into it
mkdir $1
cd $1

# create the local repo                                                          
git init --initial-branch=main                                                   
# then the remote
if [ $2 = "Typescript" ]; then
  gh repo create $1  --public --license "unlicense" --confirm
  npm init -y
  npm install typescript --save-dev
  npm install @types/node --save-dev
  npx tsc --init --rootDir src --outDir build \
  --esModuleInterop --resolveJsonModule --lib es6 \
  --module commonjs --allowJs true --noImplicitAny true
  mkdir src
  touch src/index.ts
else
  gh repo create $1  --public --gitignore $2  --license "unlicense" --confirm
fi
git pull origin main

# create README.md
touch README.md
echo "# $1" >> README.md

# add the GitHub Action for Linting
mkdir -p .github/workflows
echo $2
if [ $2 = "Swift" ]; then
  cd .github/workflows
  cp ~/scripts/swift.yml ./swift.yml
  cd ../..
  echo''
  echo "[![SwiftLint](https://github.com/Felipe-Affonso047/$1/workflows/SwiftLint/badge.svg)](https://github.com/Felipe-Affonso047/$1/actions)" >> ./README.md
  git add .github/workflows/swift.yml
elif [ $2 = "Java" ]; then
  cd .github/workflows
  cp ~/scripts/main.yml ./main.yml
  cd ../..
  cp ~/package-info.java ./package-info.java
  echo ''
  echo "[![GitHub's Super Linter](https://github.com/Felipe-Affonso047/$1/workflows/GitHub's%20Super%20Linter/badge.svg)](https://github.com/Felipe-Affonso047/$1/actions)" >> ./README.md
  git add .github/workflows/main.yml
elif [ $2 = "Typescript" ]; then
  echo "typescript"
fi

# update remote
git add *
git commit -m "init"
git push origin main
