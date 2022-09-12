class Patient < ActiveRecord::Base
#Has many association through bookings
    has_many :bookings
    has_many :consultations, through: :bookings
end