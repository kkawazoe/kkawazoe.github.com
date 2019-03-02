# My Memorandum For Programming

## 使用エンジン

- 静的ページジェネレータ  
HUGO
- 静的サイトのホスティングサービス  
GitHub Pages

## 他の端末で使用する場合

### master ブランチの内容の取り込み

`git clone` をして master ブランチを取り込み

```bash
git clone git@github.com:kkawazoe/kkawazoe.github.com.git
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
