<!-- -*- mode: markdown x-*- coding: utf-8 -*- -->
# heartfulmoon.netlify.app

## prepare

make repository named hertfulmoon.netlify.app in github.com

## initialization

create

    $ hugo new site hertfulmoon.netlify.app

deploy into github

    $ cd hertfulmoon.netlify.app/
    $ git init
    $ git remote add origin git@github-heartfulmoon:heartfulmoon/heartfulmoon.netlify.app
    $ git add .
    $ git commit -m 'first commit'
    $ git push -u origin master

## netlily

* login as heartfulmoon@github.com
* use github repositry called heartfulmoon.github.com
* set bellow
    * Build command: hugo
    * Public directory: public
* set Build Hooks(必要か) 

## publish

    $ git add .
    $ git commit -m 'modify'
    $ git push

## note

add public in .gitignore
