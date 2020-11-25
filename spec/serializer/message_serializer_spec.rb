require 'rails_helper'

RSpec.describe MessageSerializer, type: :serializer do
  let(:user) { FactoryBot.create(:user)}
  let(:room) { FactoryBot.create(:room)}
  let(:message) { FactoryBot.create(:message, room: room, user: user)}
  let(:serializer) { described_class.new(message) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }
  let(:subject) { JSON.parse(serialization.to_json) }

  it 'only contains expected keys' do
    expect(subject.keys).to contain_exactly(
      'id',
      'room_id',
      'user_id',
      "body"
    )
  end
  
  it 'should have an id that matches' do
    expect(subject['id']).to eq(message.id)
  end
  
  it 'should have a room_id that matches' do
    expect(subject['room_id']).to eq(message.room_id)
  end
  
  it 'should have a user_id that matches' do
    expect(subject['user_id']).to eq(message.user_id)
  end
  
  it 'should have a body that matches' do
    expect(subject['body']).to eq(message.body)
  end
end