class Recipe < ApplicationRecord
  has_one_attached :image
  # has_many_attached :images
  belongs_to :user
end
