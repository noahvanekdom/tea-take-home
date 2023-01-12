require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe "Validations" do
    it { should validate_presence_of :price }
    it { should validate_presence_of :title }
    it { should validate_presence_of :status }
    it { should validate_presence_of :frequency }
  end

  describe "Relationships" do
    it { should belong_to :customer }
    it { should belong_to :tea }
  end

  describe "Methods" do
    it "can be created" do
      teas = create_list(:tea, 5)
      customers = create_list(:customer, 5)

      subscription = create :subscription
      expect(subscription).to be_a Subscription
    end
  end
end
