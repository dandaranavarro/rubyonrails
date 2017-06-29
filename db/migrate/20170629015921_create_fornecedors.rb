class CreateFornecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :fornecedors do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
