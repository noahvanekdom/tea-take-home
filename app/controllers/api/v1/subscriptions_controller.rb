class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      body = SubscriptionSerializer.new(subscription)
      render json: body, status: 201
    else
      render json: { errors: ["Invalid Params"] }, status: 400
    end
    rescue ArgumentError
      render json: { errors: ["Frequency is invalid, please designate weekly or monthly"] }, status: 400
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }
  end

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions
    body = SubscriptionSerializer.new(subscriptions)
    if customer
      render json: body, status: 200
    end
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(params.permit(:status))
    if subscription.save
      body = SubscriptionSerializer.new(subscription)
      render json: body, status: 200
    end
    rescue ArgumentError
      render json: { errors: ["Status or Frequency is invalid, record not updated"] }, status: 400
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }
  end

private

  def subscription_params
    params.permit(:customer_id, :tea_id, :status, :frequency, :price, :title)
  end
end