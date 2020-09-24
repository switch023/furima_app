# README
test
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|string|null: false|
|email|string|null: false, unique:true|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|birth_year|date|null:false|
|birth_month|date|null:false|
|birth_day|date|null:false|
### Association
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :user_evaluations
- has_many :todo_lists
- has_many :buyer_items,foregin_key:"buyer_id",class_name:"items"
- has_many :seller_items,foregin_key:"seller_id",class_name:"items"
- has_one :send_infomation, dependent: :destroy
- has_one :credit_card, dependent: :destroy


## send_informations table
|send_first_name|string|null: false|
|send_family_name|string|null: false|
|send_first_name_kana|string|null: false|
|send_family_name_kana|string|null: false|
|post_code|integer|null:false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building_name|string||
|phone_number|integer|unll: false, unique: true|
|user|references|null:false, foreign_key: true|
### Association
- belongs_to :user


## credit_cards table
|Column|Type|Options|
|------|----|-------|
|card_id|string|null: false|
|customer_id|string|null: false|
|user|integer|null :false |
### Association
- belongs_to: user


## user_evaluations table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
|evaluation|references|null: false, foreign_key: true|
|review|text|null: false|
### Association
- belongs_to: active_hash: evaluation
- belongs_to: user
- belongs_to: item


## evaluations table
|Column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
### Association
- has_many :user_evaluations


## todo_lists table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false,foreign_key: true|
|lest|text|null: false|
### Association
- belongs_to :user

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|introduction|text|null: false|
|price|integer|null: false|
|brand|text|
|category|references|null: false,foreign_key: true|
|item_condition|references|null: false,foreign_key: true|
|postage_payer|references|null: false,foreign_key: true|
|prefecture_code|integer|null:false|
|preparation_day|references|null: false,foreign_key: true|
|postage_type|references|null:false,forgin_key: true|
|buyer_id|references|foregin_key:true|
|seller_id|references|null:false,foregin_key:true|
### Association
- has_many :comments,dependent: :destroy
- has_many :favorites
- has_many :item_images,dependent: :destroy
- has_one :user_evaluation
- belongs_to :category
- belongs_to :active_hash :item_condition
- belongs_to :active_hash :postage_payer
- belongs_to :active_hash :prefecture_code
- belongs_to :active_hash :preparation_day
- belongs_to :active_hash :postage_type
- belongs_to :buyer,class_name:"User"
- belongs_to :seller,class_name:"User"


## comments table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false,foreign_key: true|
|item|references|null: false,foreign_key: true|
|comment|text|null:false|
|created_at|timestamp|null:false|
### Association
- belongs_to :user
- belongs_to :item


## favorites
|Column|Type|Options|
|------|----|-------|
|user|references|null: false,foreign_key: true|
|item|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item


## item_images table
|Column|Type|Options|
|------|----|-------|
|item|references|null:false,foreign_key: true|
|url|string|null:false|
### Association
- belongs_to :items


## categories table
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ancestry|string|null:false|
### Association
- has_many :items


## item_conditions(active_hash) table
|Column|Type|Options|
|------|----|-------|
|item_condition|string|null:false|
### Association
- has_many :items


## postage_payers(active_hash) table
|Column|Type|Options|
|------|----|-------|
|postage_payer|string|null:false|
### Association
- has_many :items


## preparation_days(active_hash) table
|Column|Type|Options|
|------|----|-------|
|preparation_day|string|null:false|
### Association
- has_many :items


## postage_types(active_hash) table
|Column|Type|Options|
|------|----|-------|
|postage_type|string|null: false|
### Association
- has_many :items

## prefecture_code(active_hash) table
|Column|Type|Options|
|------|----|-------|
|prefecture__code|string|null: false|
### Association
- has_many :items