class Category < ApplicationRecord
  has_many :dish_categories
  has_many :dishes, through: :dish_categories
end
