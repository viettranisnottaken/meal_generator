class CreateDishTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_types do |t|
      t.references :dish, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
