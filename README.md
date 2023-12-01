# Note To Self \~One Step At A Time\~

## 使用エンジン

- 静的ページジェネレータ  
HUGO
- 静的サイトのホスティングサービス  
GitHub Pages

## 他の端末で使用する場合

### HUGO のインストール

[参考](https://gohugo.io/getting-started/installing/) の手順でインストールする  
※以下の手順で使用するテーマを使用する場合は `hugo-extended` の方をインストールする

### source ブランチの内容の取り込み

`git clone` をして source ブランチを取り込み

```bash
git clone git@github.com:kkawazoe/kkawazoe.github.com.git --recursive
```

## 記事の更新方法

- 作業は `source` ブランチで行う
- 記事編集後に `git add --all && git commit` を行う
- `git push origin source` で `push` を行う
- deploy は `source` ブランチの `push` に反応して `github actions` で行われる
- 投稿日を未来日に設定した場合、日次処理(12:30)でもデプロイされる

## テーマ(submodule)を後から取り込む場合

git clone 時に `--recursive` オプションを指定しなかった場合は以下を行う

```bash
git submodule update --init
```
