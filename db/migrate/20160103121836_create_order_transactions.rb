class CreateOrderTransactions < ActiveRecord::Migration
  def change
    create_table :order_transactions do |t|
      t.integer :order_id
      t.string :action
      t.string :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params

      t.timestamps null: false
    end
  end
end
