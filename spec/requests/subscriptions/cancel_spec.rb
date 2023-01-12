require 'rails_helper'

RSpec.describe "Cancelling a Subscription" do
  context "happy path" do
    describe "when a PATCH request is sent to (/api/v1/customers/{customer_id}/subscriptions)" do


      it "returns a 204 status code indicating that a subscription has been edited" do
        customer = create :customer
        tea = create :tea
        subscription = create :subscription
        expect(subscription.status).to eq "active"

        patch api_v1_customer_subscription_path(customer.id, subscription.id), params: { status: "canceled" }

        expect(response).to be_successful

        subscription.reload

        expect(subscription.status).to eq "canceled"
      end
    end
  end
end
