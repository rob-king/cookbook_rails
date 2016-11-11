class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, :amount, presence: true, length: {minimum: 5}
end
