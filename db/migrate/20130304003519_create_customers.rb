class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :tableNumber
      t.decimal :totalOrder

      t.timestamps
    end
  end
end
