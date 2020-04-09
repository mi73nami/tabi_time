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
- has_many :post_tags

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, unique:true|
|email|string|null: false, unique:true|
|password|string|null: false|
|nickname|string|null: false|
|biography|text||
|userimage|string||
### Association
- has_many :posts
- has_many :favorites
- has_many :comments
- has_many :relationships
- has_many :followings, through: :relationships, source: :follow
- has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
- has_many :followers, through: :reverse_of_relationships, source: :user

## relationshipsテーブル
|Column|Type|Options|
|------|----|-------|
|follow_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :follow, class_name: 'User'

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts, through:  :post_tags
- has_many :post_tags

## post_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts

## ereasテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts
- has_many :countries
- has_many :cities

## countriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|erea_id|integer|null: false, foreign_key: true|
### Association
- has_many :posts
- has_many :cities
- belongs_to :erea