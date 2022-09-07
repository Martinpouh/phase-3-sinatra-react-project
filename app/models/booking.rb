class Booking < ActiveRecord::Base
    belongs_to :patient
    belongs_to :consultation
end