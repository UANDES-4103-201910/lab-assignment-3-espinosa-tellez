class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket

	def most_tickets_sold
		self.user.select("name").group(:event_id).order("COUNT(event_id) DESC").first
	end

	def highest_revenue
		self.ticket.user.select("name").group(:event_id).order("SUM(amount) DESC").first
	end
end
