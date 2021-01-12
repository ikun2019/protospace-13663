# テーブル設計

## usersテーブル
|column    |type  |options    |
| -------- | ---- | --------- |
|email     |string|null: false|
|password  |string|null: false|
|name      |string|null: false|
|profile   |text  |null: false|
|occupation|text  |null: false|
|position  |text  |null: false|

### association
- has_many :prototypes
- has_many :comments

## prototypesテーブル
|column    |type      |options    |
| -------- | -------- | --------- |
|title     |string    |null: false|
|catch_copy|text      |null: false|
|concept   |text      |null: false|
|user      |references|           |

### association
- belongs_to :user
- has_many :comments

## commentsテーブル
|column    |type      |options    |
| -------- | -------- | --------- |
|text      |text      |null: false|
|user      |references|           |
|prototype |references|           |

### association
- belongs_to :user
- belongs_to :prototype