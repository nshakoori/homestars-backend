require 'rails_helper'

RSpec.describe Message, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:message)).to be_valid
  end

  it { should belong_to(:user) }
  it { should belong_to(:room) }
end