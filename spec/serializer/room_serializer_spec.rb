require 'rails_helper'

RSpec.describe RoomSerializer, type: :serializer do
  let(:room) { FactoryBot.create(:room)}
  let(:serializer) { described_class.new(room) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }
  let(:subject) { JSON.parse(serialization.to_json) }

  it 'only contains expected keys' do
    expect(subject.keys).to contain_exactly(
      'id',
      'name',
    )
  end
  
  it 'should have an id that matches' do
    expect(subject['id']).to eq(room.id)
  end
  
  it 'should have a room name that matches' do
    expect(subject['name']).to eq(room.name)
  end
end