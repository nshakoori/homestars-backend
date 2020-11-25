require 'rails_helper'

RSpec.describe UserSerializer, type: :serializer do
  let(:user) { FactoryBot.create(:user)}
  let(:serializer) { described_class.new(user) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }
  let(:subject) { JSON.parse(serialization.to_json) }

  it 'only contains expected keys' do
    expect(subject.keys).to contain_exactly(
      'id',
      'name',
    )
  end
  
  it 'should have an id that matches' do
    expect(subject['id']).to eq(user.id)
  end
  
  it 'should have a user name that matches' do
    expect(subject['name']).to eq(user.name)
  end
end