class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.decimal :price
      t.string :desrc
      t.integer :articleID

      t.timestamps
    end
  end
end
