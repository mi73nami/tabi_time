![](https://i.gyazo.com/13536b23085d7009f9cc2f9d4d2ed1e4.png)

## 概要
画像と簡単な情報と文章を投稿できるSNSアプリケーションです。<br>
投稿する情報は旅行に関係したものをメインとしています。

## 制作意図
旅行が好きで写真をたくさん撮るのですが、その写真をどこで撮ったのかなどの情報を記録したいと思った時に、ブログを書くのは大変だったので簡単な情報を記録できるアプリケーションがあればいいなと思い制作しました。<br>
また、制作時期が新型コロナウイルスが流行しており、旅行に行けない時期であったため、このアプリケーションを通して利用者が旅行に行った気分になれたり、少しでも楽しい気持ちを持ってもらえたらと思っています。

## 開発環境
Ruby 2.5.1<br>
Rails 5.2.4.2<br>
DB:MySQL<br>

## 機能
ユーザー登録、ログイン<br>
プロフィール編集<br>
新規投稿、投稿編集<br>
コメント<br>
投稿お気に入り<br>
ユーザーフォロー<br>

## 本番環境
[たびたいむ](https://tabi-time.herokuapp.com/)<br>
- テストアカウント<br>
email:guest@gmail.com<br>
password:guest1<br>
新規アカウント作成していただいたも大丈夫です。<br><br>
- 使用インフラ<br>
heroku<br>
AWS S3<be>

## 動作確認
- Chromeの最新版を利用してアクセスしてください。
- デプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。
- 同時に複数の方がログインしている場合に、ログインできない可能性がございます。
- 動作が重い場合がございます。ご了承ください。（特に新規投稿、投稿更新時）
- 使用後はログアウトをお願いいたします。

テスト用アカウントでログイン、または新規登録を行ってください。<br>
ヘッダーの新規投稿より投稿画面に遷移するので、必須項目入力後投稿ボタンで投稿ができます。<br>
ヘッダーのマイページボタンより自身の投稿一覧が確認できます。<br>
投稿詳細ページにて自身の投稿の場合、投稿編集と投稿削除アイコンが出現するので、編集削除が可能です。<br>
投稿詳細ページにて投稿のお気に入りができます。<br>★アイコンをクリックするとお気に入りでき、もう一度クリックで外すことができます。<br>
投稿詳細ページにてコメントを投稿できます。
自分以外のユーザーをフォローできます。<br>プロフィールのフォローボタンをクリックするとフォローでき、もう一度クリックで外すことができます。<br>
プロフィールのお気に入り、フォローフォロワーのリンクより、そのユーザーのお気に入り、フォローフォロワーが確認できます。<br>
表示されているのが自身のプロフィールの場合、右上のアイコンよりユーザー情報の編集ができます。<br>
使用後はログアウト処理をお願いいたします。<br>

## 使用技術
- 非同期通信（お気に入り、コメント機能）
- 画像プレビュー(jQuery)
- 多階層カテゴリー(ancestry、プレイス選択機能)<br>

- gem<br>
haml<br>
devise<br>
font-awesome-sass<br>
carrierwave<br>
mini_magick<br>
jquery<br>
ancestry<br>

## 工夫ポイント
ユーザビリティを意識し、新規投稿、編集、ユーザー編集時に登録されている画像をプレビューするようにしました。<br>
アイコンを丸にする際に、長方形の画像だと正円にならず苦労しましたが、cssを用いて長方形の画像でも正円に収まるようにしました。<br>
ancestryと非同期通信を用いて、親セレクトボックス 選択時に子孫ボックスの中身が変化するようにしました。<br>
jQueryが複雑で理解が難しかったですが、実装前に比べてjQueryに対しての理解が深まったと感じています。<br>

## 課題・今後実装したい機能
- エリア別投稿一覧について
postsテーブルに保存されるplace_idはcityのidなので、エリア別投稿一覧にて、登録されているcityの一覧でしか投稿が表示されない状態です。<br>
例）登録place_idがロンドンのidの投稿<br>
ヨーロッパ→表示されない<br>
イギリス→表示されない<br>
ロンドン→表示される<br>
登録されているcityに対して、国とエリアのページでも投稿が表示されるようにしたいと思っています。<br>

- GoogleAPI
GoogleAPIを使用し、入力された住所に応じて投稿詳細ページでgoogleマップを表示したいと思っています。<br>


## ER図
![](https://i.gyazo.com/9360f0b3a9970c19930e5044828991ec.png)

## DB設計
## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|image|string|null: false|
|money|string||
|address|text||
|user_id|integer|null: false, foreign_key: true|
|place_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :place
- belongs_to :category
- has_many :likes
- has_many :liked_users, through: :likes, source: :user
- has_many :comments

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique:true|
|password|string|null: false|
|nickname|string|null: false|
|biography|text||
|image|string||
### Association
- has_many :posts
- has_many :likes
- has_many :liked_posts, through: :likes, source: :post
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

## likesテーブル
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

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts

## placesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|
### Association
- has_many :posts
