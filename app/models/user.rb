class User < ApplicationRecord
  has_many :ticket_order
  has_many :ticket, through: :ticket_order
	def most_expensive_ticket_bought
		self.ticket_order.select("amount").order(amount: :desc).first
	end
	
	def most_expensive_ticket_bought_between(start_date, finish_date)
		self.ticket_order.where("ticket_orders.date >= ?", start_date).where("ticket_orders.date <= ?", finish_date).select("amount").order(amount: :desc).first
	end

	def last_event
	self.ticket_order.event.select("events.name").order("ticket_orders.date desc").first
	end
end
