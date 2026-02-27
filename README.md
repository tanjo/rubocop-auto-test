# rubocop-auto-test

RuboCop の自動修正結果を、GitHub Actions で PR に提案コメントとして出すための検証用リポジトリです。

## 概要

- `bundle exec rubocop -a` で Ruby コードを安全な範囲で自動修正
- `reviewdog/action-suggester` で修正内容を PR に suggestion として投稿
- PR 作成・更新時に自動実行

## 必要環境

- Ruby 3.3（CI は 3.3 を使用）
- Bundler

## セットアップ

```bash
bundle install
```

## ローカル実行

RuboCop を実行:

```bash
bundle exec rubocop
```

安全な自動修正を実行:

```bash
bundle exec rubocop -a
```

強力な自動修正（挙動が変わる可能性あり）を実行:

```bash
bundle exec rubocop -A
```

## GitHub Actions

ワークフローは `.github/workflows/test.yml` にあります。

- トリガー: `pull_request`（`opened`, `synchronize`, `reopened`）
- 実行内容:
	1. コードをチェックアウト
	2. Ruby 3.3 をセットアップ
	3. `bundle exec rubocop -a || true` を実行
	4. `reviewdog/action-suggester` で提案コメント化

## 補足

- 現在の `Gemfile` では `rubocop` のみを利用しています。
- ルールを固定したい場合は `.rubocop.yml` を作成・更新してください。

