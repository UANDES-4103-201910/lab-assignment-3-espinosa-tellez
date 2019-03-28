class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :event, foreign_key: true
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
