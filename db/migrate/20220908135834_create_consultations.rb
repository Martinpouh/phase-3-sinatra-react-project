class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    # Create the table
    create_table :consultations do |t|
      #Attributes
      t.string :name
      t.string :description
      t.datetime :time
      t.integer :duration
      t.integer :price
    end
  end
end
