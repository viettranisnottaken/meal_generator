class Dish < ApplicationRecord
  include Discard::Model
  
  has_many :dish_categories
  has_many :categories, through: :dish_categories
  has_many :dish_types
  has_many :types, through: :dish_types
  has_many :meal_dishses
  has_many :meals, through: :meal_dishses

  default_scope -> { kept }
end
