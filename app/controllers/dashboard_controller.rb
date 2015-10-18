class DashboardController < ApplicationController

  def index
    @subscription_plans = Subscription.all
    @teachers = Teacher.all
    @lessions = current_member.subscription

    unless current_member.has_subscription?
      @subscriptions = Subscription.all
    end
  end

end
