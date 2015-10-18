class RemoveTypeFromSubscriptions < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :type
  end
end
