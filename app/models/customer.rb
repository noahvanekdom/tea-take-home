class Customer < ApplicationRecord

  validates_presence_of :first_name, :last_name, :address
  validates_uniqueness_of :email
end
