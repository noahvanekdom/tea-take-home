require 'rails_helper'

RSpec.describe "Creating a Subscription" do
  context "happy path" do
    describe "when a POST request is sent to (/api/v1/customers/{customer_id}/subscriptions)" do
      it "returns a 201 status code indicating that a new subscription has been created" do
        post api_v1_customer_subscriptions_path(1), params: { tea_id: 1 }


        expect(response).to be_successful
      end
    end
  end
end