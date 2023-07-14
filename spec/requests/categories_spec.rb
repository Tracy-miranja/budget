require 'rails_helper'

RSpec.describe "Categories", type: :request do
  let(:user) { instance_double(User) }

  describe "GET /categories" do

      it "displays the category's name and total amount" do
      end
    end

  describe "POST /categories" do
    context "with valid attributes" do
      before do
        allow(user).to receive(:categories).and_return([])
        allow(controller).to receive(:current_user).and_return(user)
      end

      it "creates a new category" do
      end
    end

    context "with invalid attributes" do
      before do
        allow(user).to receive(:categories).and_return([])
        allow(controller).to receive(:current_user).and_return(user)
      end

      it "does not create a new category" do
      end
    end
  end

  describe "DELETE /categories/:id" do
    before do
      allow(user).to receive(:categories).and_return([])
      allow(controller).to receive(:current_user).and_return(user)
    end

    it "destroys the category" do
    end
  end
end
