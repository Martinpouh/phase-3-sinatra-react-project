class Booking < ActiveRecord::Base
#Associations
    belongs_to :patient
    belongs_to :consultation
end