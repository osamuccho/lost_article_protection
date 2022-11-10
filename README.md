
# テーブル設計

## event テーブル

| Column             | Type         | Options                        |
| ------------------ | ------       | -----------                    |
| event_name         | string       | null: false                    |

has_many :tags




## tagテーブル

| Column     | Type      | Options     |
| -------    | --------- | ----------- |
|  tag_name  | string    | null: false |
|  event_id  | references| null: false, foreign_key: true |

belongs_to :event
