class Show < ActiveRecord::Base
    has_many :bookings

    # we add a custom method to count bookings related to this show
    def nb_of_bookings
    	return Booking.where(show_id: self.id).count
    end

end
