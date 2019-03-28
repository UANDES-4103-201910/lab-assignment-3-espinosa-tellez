class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket
  has_many :ticket_order, through: :ticket

	def most_tickets_sold
		self.joins(:ticket_order).select("name").group(:event_id).order("COUNT(event_id) DESC").first
	end

	def highest_revenue
		self.joins(:ticket_order).select("name").group(:event_id).order("SUM(amount) DESC").first
	end
end
