class AddSubscriptionToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :subscription, index: true
  end
end
