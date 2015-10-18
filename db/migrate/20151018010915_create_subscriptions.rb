class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :price

      t.timestamps null: false
    end
  end
end
