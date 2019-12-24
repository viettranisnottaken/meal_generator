class Menu < ApplicationRecord
  has_many :meal_menus
  has_many :meals, through: :meal_menus
end
