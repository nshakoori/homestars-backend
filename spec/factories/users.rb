FactoryBot.define do 
  factory :user do
    name { "User Name" }
    association :room, factory: :room
  end
end