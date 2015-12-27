class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
