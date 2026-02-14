FROM node:20-slim

# pnpm を有効化
RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

# 依存関係のインストール
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install --frozen-lockfile

# ソースコードのコピー
COPY . .

EXPOSE 3000

CMD ["pnpm", "dev"]
