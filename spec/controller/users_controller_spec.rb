require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    let!(:user1) { FactoryBot.create(:user, name: "user 1") }
    let!(:user2) { FactoryBot.create(:user, name: "user 2") }

    subject { get :index, {} }

    it "returns a success response" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "returns a list of users" do
      subject
      result = assigns(:users)
      expect(result.count).to eq(2)
      expect(result).to include(user1)
      expect(result).to include(user2)
    end

  end
end