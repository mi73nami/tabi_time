# README

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

# たびたいむDB設計

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|image|string|null: false|
|money|string||
|adress|text||
|user_id|integer|null: false, foreign_key: true|
|erea_id|integer|null: false, foreign_key: true|
|country_id|integer|null: false, foreign_key: true|
|city_id|integer|null: false, foreign_key: true|
|genre_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :erea
- belongs_to :country
- belongs_to :city
- belongs_to :genre
- has_many :favorites
- has_many :comments
- has_many :tags, through:  :post_tags