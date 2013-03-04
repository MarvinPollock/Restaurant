class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :oderID
      t.decimal :price
      t.string :comment
      t.time :orderTimeStamp
      t.integer :tableNumber

      t.timestamps
    end
  end
end
