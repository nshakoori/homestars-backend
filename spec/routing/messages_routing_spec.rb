require "rails_helper"

RSpec.describe MessagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/messages").to route_to("messages#index")
    end
  end
end