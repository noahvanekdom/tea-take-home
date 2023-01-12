class Tea < ApplicationRecord
  validates_presence_of :brew_time, :temperature, :description
  validate_uniqueness_of :title

  has_many :subscriptions
  has_many :customers, through: :subscriptions
end
