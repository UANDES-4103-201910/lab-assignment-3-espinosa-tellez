class User < ApplicationRecord
  has_many :ticket_order
  has_many :ticket, through: :ticket_order
	def most_expensive_ticket_bought
		self.joins(:ticket_order).select("amount").order(amount: :desc).first
	end
	
	def most_expensive_ticket_bought_between(start_date, finish_date)
		self.joins(:Ticket_Order).where("Ticket_Order.date >= ?", start_date).where("Ticket_Order.date <= ?", finish_date).select("amount").order(amount: :desc).first
	end

	def last_event
	self.joins(:Ticket_Order, :Ticket, :Event).select("event.name").order("ticket_order.date desc").first
	end
end
