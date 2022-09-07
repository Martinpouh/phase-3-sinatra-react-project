class BookingsController < ApplicationController

    get "/bookings" do
        Booking.all.to_json
    end

    post "/bookings" do
        booking = Booking.create(
            patient_id: params[:patientId],
            consultation_id: params[:consultationId]
        )
        booking.to_json
    end

    get "/bookings/:id" do
        booking = Booking.find(params[:id])
        Booking.to_json
    end

    patch "/bookings/:id" do
        booking = Booking.find(params[:id])
        booking.update(params)
        booking.to_json
    end

    delete "/bookings/:id" do
        booking = Booking.find(params[:id])
        booking.destroy
    end

end