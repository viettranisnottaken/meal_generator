class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name

      t.datetime :discarded_at
      t.index :discarded_at 

      t.timestamps
    end
  end
end
