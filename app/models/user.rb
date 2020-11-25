class User < ApplicationRecord
  has_many :messages
  belongs_to :room

  validates :name, presence: true
end