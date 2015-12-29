json.array!(@receptionists) do |receptionist|
  json.extract! receptionist, :id
  json.url receptionist_url(receptionist, format: :json)
end
