class CreateTicketOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_orders do |t|
      t.references :ticket, foreign_key: true
      t.integer :amount
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
