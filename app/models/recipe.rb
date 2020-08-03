class Recipe < ApplicationRecord
  has_one_attached :image
  # has_many_attached :images
  belongs_to :user
  has_many :comments

  validates :name, :material, :howto1, :howto2, :howto3, presence: true

  def self.search(search)
    return Recipe.all unless search
    Recipe.where('name LIKE(?)', "%#{search}%")
  end
end
