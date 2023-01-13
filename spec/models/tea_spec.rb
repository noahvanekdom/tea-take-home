require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe "Validations" do
    it { should validate_presence_of :brew_time }
    it { should validate_presence_of :description }
    it { should validate_presence_of :title }
    it { should validate_presence_of :temperature }
  end

  describe "Relationships" do
    it { should have_many :subscriptions }
    # it { should have_many(:customers).through :subscriptions }
  end

  describe "Methods" do
    it "can be created" do
      tea = create :tea
      expect(tea).to be_a Tea
    end
  end
end
