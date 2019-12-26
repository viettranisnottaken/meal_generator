class Meal < ApplicationRecord
  include Discard::Model
  
  has_many :meal_menus
  has_many :menus, through: :meal_menus

  default_scope -> { kept }
end
