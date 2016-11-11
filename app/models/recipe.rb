class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  validates :name, :description, presence: true, length: {minimum: 10}
end
