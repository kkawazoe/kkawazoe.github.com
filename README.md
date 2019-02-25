# My Memorandum For Programming

## 使用エンジン

- 静的ページジェネレータ  
HUGO
- 静的サイトのホスティングサービス  
GitHub Pages

## 他の端末で使用する場合

### subtree の追加および master ブランチの内容の取り込み

`git clone` 後 `public` フォルダ配下を `subtree` に追加して `master` ブランチ
の内容を取り込む。

```bash
git clone git@github.com:kkawazoe/kkawazoe.github.com.git
cd kkawazoe.github.com
git subtree add --prefix=public/ origin master
git subtree pull --prefix=public/ origin master
```

### テーマの取り込み

HUGO のテーマを `git clone` で取り込む

```bash
cd themes
git clone https://github.com/dim0627/hugo_theme_robust.git
cd ..
```

## 記事の更新方法

- 作業は `source` ブランチで行う
- 記事編集後に `git add --all && git commit` を行う
- デプロイは以下で行う
  - Mac: `./deploy.sh`
  - Windows: `.\deploy.bat`
