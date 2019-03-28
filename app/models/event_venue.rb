class EventVenue < ApplicationRecord
  has_many :event

	def last_attendance
		self.joins(:event, :ticket_order).group("Event.id").order("Event.date desc").count.first
	end
end
