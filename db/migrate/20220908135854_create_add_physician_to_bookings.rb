class CreateAddPhysicianToBookings < ActiveRecord::Migration[6.1]
  def change
    # add column
    add_column :consultations, :physician, :string
  end
end
