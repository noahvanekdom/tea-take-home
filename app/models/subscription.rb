class Subscription < ApplicationRecord
  validates_presence_of :frequency, :price, :status, :title
  enum status: [ :active, :canceled ]
  enum frequency: [ :weekly, :monthly ]

  belongs_to :customer
  belongs_to :tea
end
