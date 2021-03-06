require 'rails_helper'

RSpec.describe Room, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:room)).to be_valid
  end

  it { should validate_presence_of :name }
  it { should have_many(:messages) }
end