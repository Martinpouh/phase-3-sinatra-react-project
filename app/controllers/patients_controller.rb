class PatientsController < ApplicationController

    get "/patients" do
        # Patient.all.to_json
        patients_array = Patient.all.map do | patient |
            patient_json = patient.as_json
            patient_json[:consultation_count] = patient.consultations.count
            patient_json
        end
        patients_array.to_json
    end

    post "/patients" do
        # patient = patient.create(
        #     first_name: params[:firstName],
        #     last_name: params[:lastName],
        #     email: params[:email]
        # )
        patient = Patient.create_with(
            first_name: params[:firstName], 
            last_name: params[:lastName]).find_or_create_by(email: params[:email])
        patient.to_json
    end

    get "/patients/:id" do
        patient = Patient.find(params[:id])
        patient_json = patient.as_json
        consultations = patient.consultations.all
        consultationsResId = consultations.map do |consultation|
            consultation_json = consultation.as_json
            res = consultation.bookings.find_by(patient_id: patient.id)
            res_id = res.id
            consultation_json[:res_id] = res_id
            consultation_json
        end
        patient_json[:consultations] = consultationsResId
        patient_json.to_json
    end

    patch "/patients/:id" do
        patient = Patient.find(params[:id])
        patient.update(
            first_name: params[:firstName],
            last_name: params[:lastName],
            email: params[:email]
        )
        patient.to_json
    end

    delete "/patients/:id" do
        patient = Patient.find(params[:id])
        patient.destroy
    end

end