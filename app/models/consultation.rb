class Consultation < ActiveRecord::Base
#Has many association through bookings
    has_many :bookings
    has_many :patients, through: :bookings
end