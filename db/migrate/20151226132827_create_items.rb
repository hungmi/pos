class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :amount
      t.decimal :price
      t.belongs_to :order
      t.belongs_to :food

      t.timestamps null: false
    end
  end
end
