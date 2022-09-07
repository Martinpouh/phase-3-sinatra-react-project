require 'date'

class ConsultationsController < ApplicationController

    get "/consultations" do
        # consultation.all.to_json
        consultations_array = Consultation.all.map do |consultation|
            consultation_json = consultation.as_json
            consultation_json[:patient_count] = consultation.patients.count
            consultation_json
        end
        consultations_array.to_json
    end

    post "/consultations" do
        # datetime = params[:time].to_datetime
        consultation = Consultation.create(
            name: params[:name],
            description: params[:description],
            date: params[:date],
            time: params[:time],
            duration: params[:duration].to_i,
            price: params[:price].to_i,
            physician: params[:physician]
        )
        consultation.to_json
    end


    get "/consultations/:id" do
        consultation = Consultation.find(params[:id])
        consultation_json = consultation.as_json
        patients = consultation.patients.all
        patientsResId = patients.map do |patient|
            patient_json = patient.as_json  
            res = patient.bookings.find_by(consultation_id: consultation.id)
            res_id = res.id
            patient_json[:res_id] = res_id
            patient_json
        end
        consultation_json[:patients] = patientsResId
        consultation_json.to_json
    end


    patch "/consultations/:id" do
        consultation = Consultation.find(params[:id])
        consultation.update(params)
        consultation.to_json
    end

    delete "/consultations/:id" do
        consultation = Consultation.find(params[:id])
        consultation.destroy
    end

end