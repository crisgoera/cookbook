class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.text :elaboration

      t.timestamps
    end
  end
end
