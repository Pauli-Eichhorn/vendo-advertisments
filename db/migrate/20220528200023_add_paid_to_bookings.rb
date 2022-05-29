class AddPaidToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :paid, :boolean, :default => false
  end
end
