json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :name, :address, :eps_asociada
  json.url clinic_url(clinic, format: :json)
end
