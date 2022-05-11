class AddCampagneToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :campagne, :boolean, :default => false
  end
end
