class Type < ApplicationRecord
  include Discard::Model
  
  has_many :dish_types
  has_many :dishes, through: :dish_types

  default_scope -> { kept }
end
