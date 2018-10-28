<!-- -*- coding:utf-8-unix -*- -->

# Book [![CircleCI](https://circleci.com/gh/rust-lang-ja/book.svg?style=svg)](https://circleci.com/gh/rust-lang-ja/book)

TRPL 2 日本語版のHTML BookをCircleCIでビルドするためのリポジトリ。

- TRPL 2のソースリポジトリ： https://github.com/hazama-yuinyan/book
- HTML Bookの公開先： https://doc.rust-jp.rs/book/second-edition/


## ビルドの手動起動

起動にあたって、CircleCI [rust-lang-jaオーガニゼーション](https://circleci.com/gh/rust-lang-ja)の管理者権限が必要です。

CircleCIのユーザートークンを取得し、以下のコマンドを実行します。

```console
$ export CIRCLE_API_USER_TOKEN=<ユーザートークン>
$ curl -X POST -u ${CIRCLE_API_USER_TOKEN}: \
       https://circleci.com/api/v1.1/project/github/rust-lang-ja/book/build
```

起動に成功すると以下のレスポンスが返されます。

```console
{
 "status" : 200,
 "body" : "Build created"
}
```
