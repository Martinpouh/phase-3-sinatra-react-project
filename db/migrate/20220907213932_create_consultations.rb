class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :consultations do |t|
      t.string :name
      t.string :description
      t.datetime :time
      t.integer :duration
      t.integer :price
    end
  end
end
