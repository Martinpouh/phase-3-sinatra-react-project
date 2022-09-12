class Consultation < ActiveRecord::Base
#Has many association
    has_many :bookings
    has_many :patients, through: :bookings
end