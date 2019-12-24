class Type < ApplicationRecord
  has_many :dish_types
  has_many :dishes, through: :dish_types
end
