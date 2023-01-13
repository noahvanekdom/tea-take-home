require 'rails_helper'

RSpec.describe "Creating a Subscription" do
  context "happy path" do
    describe "when a POST request is sent to (/api/v1/customers/{customer_id}/subscriptions)" do


      it "returns a 201 status code indicating that a new subscription has been created" do
        customer = create :customer
        tea = create :tea
        expect(Subscription.all.count).to eq 0
        post api_v1_customer_subscriptions_path(customer.id), params: { tea_id: tea.id, price: 10, frequency: "weekly", title: "Bobby B's Iced Tea"}



        expect(response).to be_successful
        expect(Subscription.all.count).to eq 1

        body = JSON.parse response.body
        expect(body).to be_a Hash
      end
    end
  end

  context "sad path" do
    describe "when invalid params are sent in" do
      it "returns an appropriate error message" do
        customer = create :customer
        tea = create :tea
        expect(Subscription.all.count).to eq 0
        post api_v1_customer_subscriptions_path(customer.id), params: { price: 10, frequency: "weekly", title: ""}

        expect(response.status).to eq 400
      end
    end
  end
end