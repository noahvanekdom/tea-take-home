class Tea < ApplicationRecord

  validates_presence_of :brew_time, :temperature, :description
  validate_uniqueness_of :title
end
