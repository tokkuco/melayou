class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :title
      t.string :describtion
      t.integer :price
      t.string :product
      t.integer :amount

      t.timestamps
    end
  end
end
