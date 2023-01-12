require 'rails_helper'

RSpec.describe "Viewing a customer's subscriptions" do
  context "happy path" do
    describe "when a GET request is sent to (/api/v1/customers/{customer_id}/subscriptions)" do


      it "returns a 200 status code indicating that the request was a success" do
        customer = create :customer
        tea = create :tea
        subscriptions = create_list(:subscription, 5)
        
        patch api_v1_customer_subscriptions_path(customer.id)
        expect(response).to be_successful

        body = JSON.parse(response.body)
        expect(body).to be_an Hash
      end
    end
  end
end
