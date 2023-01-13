class Tea < ApplicationRecord
  validates_presence_of :brew_time, :temperature, :description, :title

  has_many :subscriptions
  has_many :customers, through: :subscriptions

end
