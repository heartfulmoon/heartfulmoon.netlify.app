# heartfulmoon.netlify.com

## prepare

make repository named hertfulmoon.netlify.com in github.com

## initialization

create

    $ hugo new site hertfulmoon.netlify.com
    
deploy into github

    $ cd hertfulmoon.netlify.com/
    $ git init
    $ git remote add origin git@github-heartfulmoon:heartfulmoon/heartfulmoon.netlify.com
    $ git add .
    $ git commit -m 'first commit'
    $ git push -u origin master

## netlily

* login as heartfulmoon@github.com
* use github repositry called heartfulmoon.github.com
* set bellow
    - Build command: hugo
    - Public directory: public
* set Build Hooks(必要か) 

## publish

    $ git add .
    $ git commit -m 'modify'
    $ git push
