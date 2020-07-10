# DB設計

## Userモデル

### usersテーブル
#### user情報を置く

|o|Type|Options|
|------|----|------|
|name|string|null: false|
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
|howto1|text|null: false|
|howto2|text|null: false|
|howto3|text|null: false|
|howto4|text||
|howto5|text||
|howto6|text||
|howto7|text||
|howto8|text||
|howto9|text||
|howto10|text||

### Association
- belongs_to :user
- belongs_to :category
- has_many :images

## Imageモデル

### imagesテーブル
#### レシピ画像を保管する

|Column|Type|Options|
|------|----|------|
|image|string||

### Association
- belongs_to :recipes

## Categoryモデル

### categoriesテーブル
#### レシピのカテゴリーを保管する

|Column|Type|Options|
|------|----|------|
|name|string||

### Association
- has_many :recipes
