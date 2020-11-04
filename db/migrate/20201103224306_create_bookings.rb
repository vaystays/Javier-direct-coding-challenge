class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.boolean :is_paid
      t.decimal :price_total
      t.decimal :price_remaining
      t.decimal :price_paid
      t.integer :status

      t.timestamps
    end
  end
end
