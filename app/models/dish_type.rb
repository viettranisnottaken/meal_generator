class DishType < ApplicationRecord
  belongs_to :dish
  belongs_to :type
end
