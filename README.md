# DB設計

## Userモデル

### usersテーブル
#### user情報を置く

|Column|Type|Options|
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
|howto1|string|null: false|
|howto2|string|null: false|
|howto3|string|null: false|
|howto4|string||
|howto5|string||
|howto6|string||
|howto7|string||
|howto8|string||
|howto9|string||
|howto10|string||

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
