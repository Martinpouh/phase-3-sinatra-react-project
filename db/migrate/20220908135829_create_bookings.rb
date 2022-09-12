class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    # Create the table
    create_table :bookings do |t|
      #Attributes
      t.integer :patient_id
      t.integer :consultation_id
  end
 end
end
