json.extract! doctor, :id, :name, :specialization, :email, :phone_number, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
