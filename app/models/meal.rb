class Meal < ApplicationRecord
  has_many :meal_menus
  has_many :menus, through: :meal_menus
end
