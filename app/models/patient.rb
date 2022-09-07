class Patient < ActiveRecord::Base
    has_many :bookings
    has_many :consultations, through: :bookings
end