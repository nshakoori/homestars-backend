FactoryBot.define do 
  factory :message do
    body { "This is a message" }
    association :user, factory: :user
    association :room, factory: :room
  end
end