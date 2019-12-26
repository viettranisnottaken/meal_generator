class Menu < ApplicationRecord
  include Discard::Model
  
  has_many :meal_menus
  has_many :meals, through: :meal_menus

  default_scope -> { kept }
end
