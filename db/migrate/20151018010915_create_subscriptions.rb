class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :type

      t.timestamps null: false
    end
  end
end
