require 'rails_helper'

RSpec.describe RoomsController, type: :controller do

  describe "GET #index" do
    let!(:room1) { FactoryBot.create(:room, name: "room 1") }
    let!(:room2) { FactoryBot.create(:room, name: "room 2") }

    subject { get :index, {} }

    it "returns a success response" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "returns a list of rooms" do
      subject
      result = assigns(:rooms)
      expect(result.count).to eq(2)
      expect(result).to include(room1)
      expect(result).to include(room2)
    end

  end
end