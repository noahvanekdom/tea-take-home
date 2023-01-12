class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      body = SubscriptionSerializer.new(subscription)
      render json: body, status: 201
    else
      render json: "Fool! You have no power here", status: 400
    end
  end

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions
    body = SubscriptionSerializer.new(subscriptions)
    render json: body, status: 200
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(params.permit(:status))
    if subscription.save
      body = SubscriptionSerializer.new(subscription)
      render json: body, status: 204
    else
      render json: "Fool! You have no power here", status: 400
    end
  end

private

  def subscription_params
    params.permit(:customer_id, :tea_id, :status, :frequency, :price, :title)
  end
end