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
    # it { should have_many(:customers).through :subscriptions }
  end

  describe "Methods" do
    it "can be created" do
      tea = create :tea
      expect(tea).to be_a T
    end
  end
end
