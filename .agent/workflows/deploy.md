---
description: 本番環境（Production）へのデプロイ手順
---

# 本番環境デプロイ手順

コードを変更した後、本番環境（Cloudflare Pages の Production）に反映する手順です。
**必ずこの手順に従ってください。**

## 手順

// turbo-all

1. デプロイコマンドを実行する
```bash
npm run deploy
```
このコマンドは `wrangler pages deploy public --branch=production --commit-dirty=true` を実行します。
`--branch=production` により、確実に **Production** としてデプロイされます。

2. デプロイ完了を確認する
出力に以下が表示されることを確認してください：
```
✨ Deployment complete!
```

3. **Production URL で確認する**
   - Production URL: `https://cf-agri-dashboard.pages.dev`
   - エイリアス URL: `https://main.cf-agri-dashboard.pages.dev`

## 注意事項

> [!CAUTION]
> `wrangler pages deploy public` を `--branch=main` なしで実行しないこと。
> ブランチ指定がないと Preview デプロイになり、Production に反映されません。

> [!IMPORTANT]
> `package.json` の `deploy` スクリプトには既に `--branch=main --commit-dirty=true` が設定済みです。
> 必ず `npm run deploy` を使用してください。直接 `wrangler pages deploy` を叩かないでください。
