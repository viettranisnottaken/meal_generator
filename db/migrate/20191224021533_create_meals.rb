class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name

      t.datetime :discarded_at
      t.index :discarded_at 

      t.timestamps
    end
  end
end
