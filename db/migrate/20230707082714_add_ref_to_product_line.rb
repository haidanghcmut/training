class AddRefToProductLine < ActiveRecord::Migration[7.0]
  def change
    add_reference :productlines, :product, null: false, foreign_key: true
  end
end
