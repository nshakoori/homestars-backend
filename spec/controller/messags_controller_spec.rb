require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "GET #index" do
    let!(:room1) { FactoryBot.create(:room, name: "room 1") }
    let!(:room2) { FactoryBot.create(:room, name: "room 2") }
    let!(:user1) { FactoryBot.create(:user, name: "user 1") }
    let!(:user2) { FactoryBot.create(:user, name: "user 2") }
    let!(:message1) { FactoryBot.create(:message, user: user1, room: room1) }
    let!(:message2) { FactoryBot.create(:message, user: user2, room: room2) }

    subject { get :index, {} }

    it "returns a success response" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "returns a list of messages" do
      subject
      result = assigns(:messages)
      expect(result.count).to eq(2)
      expect(result).to include(message1)
      expect(result).to include(message2)
    end

  end
end