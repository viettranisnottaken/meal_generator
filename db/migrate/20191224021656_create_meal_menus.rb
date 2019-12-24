class CreateMealMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_menus do |t|
      t.references :meal, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
