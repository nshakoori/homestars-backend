require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it { should validate_presence_of :name }
  it { should belong_to(:room) }
  it { should have_many(:messages) }
end