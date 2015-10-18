class AddNameAndLessionsToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :name, :string
    add_column :subscriptions, :lessons, :integer
  end
end
