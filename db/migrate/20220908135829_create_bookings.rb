class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :patient_id
      t.integer :consultation_id
  end
 end
end
