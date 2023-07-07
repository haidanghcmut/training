class CreateProductlines < ActiveRecord::Migration[7.0]
  def change
    create_table :productlines do |t|
      t.string :productLine
      t.string :testDescription
      t.text :htmlDescription
      t.binary :image

      t.timestamps
    end
  end
end
