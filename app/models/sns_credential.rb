class SnsCredential < ApplicationRecord
  belongs_to :user, optional: true
  # optional: true = usersテーブルの情報と紐付いていなくてもsaveできるようにする
end
