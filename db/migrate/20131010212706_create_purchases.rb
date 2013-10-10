class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :id
      t.string :customer
      t.string :date

      t.timestamps
    end
  end
end
