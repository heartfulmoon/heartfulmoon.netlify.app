# README

## セットアップ

サイト作成

    $ hugo new site heartfulmoon.netlify.app

テーマ設定(テーマをカスタマイズせずそのまま使う場合はsubmodule化がよい)

    $ cd heartfulmoon.netlify.app/themes
    $ git submodule add https://github.com/kakawait/hugo-tranquilpeak-theme.git

サイト設定

    $ cp -pr ./themes/hugo-tranquilpeak-theme/exampleSite/config.toml .
    vi config.toml
    baseURL = "http://heartfulmoon.netlify.app/"
    languageCode = "ja"
    title = "Heartfullmoon Web Site"
    theme = "hugo-tranquilpeak-iris"

## 使い方

### 投稿

新規投稿

    $ cd heartfulmoon.netlify.app
    $ hugo new ja/post/2020/05/helloworld.md
    content/post/2020/05/helloworld created
    
文書作成

    $ vi content/post/2020/05/helloworld
    
下書きモード解除

    $ vi content/posts/2020/05/helloworld.md
    ...
    draft: false
    ...
    
    
サーバ起動(http://localhost:1313)

    $ hugo server -D

固定ページの作成

    $ mkdir -p content/page/about/
    $ vi content/page/about/index.md
    ...
    
上記ファイル構成を元にconfig.tomlのメニューを設定

    [[menu.main]]
      name = "Blog"
      url = "post"
      weight = 1
    
    [[menu.main]]
      name = "Tags"
      url = "tags"
      weight = 2
    
    [[menu.main]]
      name = "About"
      url = "page/about/"
      weight = 3

プレビュー(http://localhost:1313)

    $ make run

## Github連携

config.tomlに以下の設定

    baseURL = "https://higebobo.github.com/blog-hugo/"
    publishDir = "docs"

公開(githubにプッシュ)

    $ make deploy

## Link

* [Hugo \+ Github Pagesでブログを公開してみた \- Qiita](https://qiita.com/eichann/items/4fe61b8b9bbafcfbe847)
* [GitHub PagesとHugoでブログをつくった \- meow\.md](https://uzimihsr.github.io/post/2019-08-07-create-blog-1/)
* [Hugoの導入から使い方とNetlifyでリリースするまでの方法](https://blog.cotapon.org/how-to-release-netlify-using-hugo/)
