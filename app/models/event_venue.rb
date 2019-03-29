class EventVenue < ApplicationRecord
  has_many :event

	def last_attendance
		event.ticket.ticket_order.group("event.id").order("event.date desc").count.first
	end
end
