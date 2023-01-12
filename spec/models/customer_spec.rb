require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "Validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :address }
  end

  describe "Relationships" do
    it { should have_many :subscriptions }
    # it { should have_many(:teas).through :subscriptions }
  end

  describe "Methods" do
    it "can be created" do
      customer1 = create :customer
      expect(customer1).to be_a Customer
    end
  end
end
