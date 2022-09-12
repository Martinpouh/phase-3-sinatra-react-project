class CreateChangeDateTimeToString < ActiveRecord::Migration[6.1]
  def change
    # change column
    change_column :consultations, :time, :string
    add_column :consultations, :date, :string
  end
end
