class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :price
      t.string :billingmethod
      t.string :deliveryaddress
      t.boolean :paid

      t.timestamps
    end
  end
end
