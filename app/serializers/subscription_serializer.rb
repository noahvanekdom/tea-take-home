class SubscriptionSerializer
  include JSONAPI::Serializer

  attributes :customer_id, :id, :tea_id, :frequency, :status, :title, :price
end