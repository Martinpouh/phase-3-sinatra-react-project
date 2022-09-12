class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    # Create the table
    create_table :patients do |t|
      #Attributes
      t.string :first_name
      t.string :last_name
      t.string :email
    end
  end
end
