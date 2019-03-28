class Ticket < ApplicationRecord
  belongs_to :event
  has_many :ticket_order
  has_many :user, through: :ticket_order
end
