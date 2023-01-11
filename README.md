
# テーブル設計


## user テーブル

| Column             | Type         | Options                        |
| ------------------ | ------       | -----------                    |
| nickname           | string       | null: false                    |
| email              | string       | null: false, unique: true      |
| encrypted_password | string       | null: false                    |


## event テーブル

| Column             | Type         | Options                        |
| ------------------ | ------       | -----------                    |
| event_name         | string       | null: false                    |
|  user_id           | references   | null: false, foreign_key: true |


has_many :tags




## tagテーブル

| Column     | Type      | Options     |
| -------    | --------- | ----------- |
|  tag_name  | string    | null: false |
|  event_id  | references| null: false, foreign_key: true |

belongs_to :event


