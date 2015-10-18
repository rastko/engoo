class UsersController < ApplicationController
  before_action
  respond_to :json

  def update
    begin
      subscription = Subscription.find(params[:subscriptionId])
      current_member.update(subscription_id: params[:subscriptionId])
      render json: current_member.subscription
    rescue
      render json: 'Error, plese try again', status: 400
    end

  end

end
