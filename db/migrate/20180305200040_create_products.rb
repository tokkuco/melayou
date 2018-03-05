class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :subtitle
      t.integer :price
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
