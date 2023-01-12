class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      render json: "You did it", status: 201
    else
      render json: "Idiot", status: 400
    end
  end

  def index
    # customer = Customer.find(params[:customer_id])
    # subscriptions = customer.subscriptions\

    # render json: subscriptions
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(params.permit(:status))
    if subscription.save
      render json: "Hooray", status: 204
      require 'pry'; binding.pry
    else
      render json: "Idiot", status: 400
    end
  end

private

  def subscription_params
    params.permit(:customer_id, :tea_id, :status, :frequency, :price, :title)
  end
end