class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
