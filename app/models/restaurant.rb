CATEGORIES = %w(chinese italian japanese french belgian)

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: CATEGORIES
end
