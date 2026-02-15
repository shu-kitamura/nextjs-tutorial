# Next.js Tutorial

このリポジトリは [Next.js のダッシュボードアプリチュートリアル](https://nextjs.org/learn/dashboard-app)を実践したものです。

チュートリアルでは Vercel の PostgreSQL を使用しますが、このリポジトリではローカル環境の Docker で PostgreSQL を動かしています。

## 前提条件

- Node.js 18 以上
- [pnpm](https://pnpm.io/)
- [Docker](https://www.docker.com/) / Docker Compose

## セットアップ

### 1. リポジトリをクローン

```bash
git clone <repository-url>
cd nextjs-tutorial
```

### 2. 依存パッケージのインストール

```bash
pnpm install
```

### 3. PostgreSQL の起動

Docker Compose で PostgreSQL コンテナを起動します。

```bash
docker compose up -d
```

PostgreSQL は `localhost:5432` で起動し、以下の設定が使われます。

| 項目 | 値 |
| --- | --- |
| ユーザー | `postgres` |
| パスワード | `postgres` |
| データベース | `nextjs_tutorial` |

### 4. 環境変数の設定

`.env` ファイルを作成し、データベース接続情報などを設定してください。

例
```
# ローカル Docker PostgreSQL
POSTGRES_URL=postgres://postgres:postgres@localhost:5432/nextjs_tutorial
```

### 5. データベースのシード

ブラウザで以下にアクセスし、初期データを投入します。

```
http://localhost:3000/seed
```

## 開発サーバーの起動

```bash
pnpm run dev
```

[http://localhost:3000](http://localhost:3000) でアプリが起動します。

## その他のコマンド

```bash
pnpm run build    # プロダクションビルド
pnpm run start    # プロダクションサーバー起動
pnpm run lint     # Lint 実行
pnpm run test     # テスト実行（今回はテストを実装していないが、側だけ用意した）
```
