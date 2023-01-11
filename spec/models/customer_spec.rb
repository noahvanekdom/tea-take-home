require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "Validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :address }
  end

  describe "Relationships" do

  end

  describe "Methods" do

  end
end
