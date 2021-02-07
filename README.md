# README

## アプリケーション名
My Cooking Memo

## アプリケーションの概要
作ったレシピをメモしていくアプリです。<br>
閲覧は誰でも可能です。新規投稿するためにはログインが必要です。

## URL
https://mycookingapp.herokuapp.com/

## テスト用アカウント
メールアドレス: test@test
<br>
パスワード： abcd1234

## 利用方法

#### アカウントの作成方法
「ログイン・ユーザー新規登録」のボタンをクリックします。<br>
メールアドレスのみでのアカウント作成の他、Googleアカウントを利用してのログインも可能です。

#### レシピを閲覧する場合
トップページには投稿された最新の４件が表示されます。<br>
メニューの「レシピを見る」ボタンをクリックすると、投稿されたレシピの一覧が表示されます。<br>
写真をクリックすると、それぞれのレシピの詳細を見ることができます。<br>
また、検索バーに語句を入力することでレシピの検索も可能です。<br>

#### レシピを投稿する場合
ログインします。<br>
ログインするとメニューに「新規投稿」の項目が表示されます。<br>
こちらをクリックし、必要事項を入力して投稿します。<br>

## 目指した課題解決
日常で作った料理をメモすることで、「また作りたい！」と思った時に簡単にレシピを参照することができます。

## リリース履歴
2020/07/31 リリース

# DB設計

## Userモデル

### usersテーブル
#### user情報を置く

|o|Type|Options|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :recipes


## Recipeモデル

### recipesテーブル
#### レシピを保管する

|Column|Type|Options|
|------|----|------|
|name|string|null: false|
|category|string||
|material|text|null: false|
|source|string||
|howto1|text|null: false|
|howto2|text|null: false|
|howto3|text|null: false|
|howto4|text||
|howto5|text||

### Association
- belongs_to :user
- belongs_to :category
- has_one_attached :image
