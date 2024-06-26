# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :task_users
- has_many :tasks, through: :task_users
- has_many :task_items

## tasks テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| label  | string | null: false |

### Association

- has_many :task_users
- has_many :users, through: :room_users
- has_many :task_items

## task_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| task   | references | null: false, foreign_key: true |

### Association

- belongs_to :task
- belongs_to :user

## task_item テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | string     |                                |
| completed | boolean    | default: false                 |
| user      | references | null: false, foreign_key: true |
| task      | references | null: false, foreign_key: true |

### Association

- belongs_to :task
- belongs_to :user