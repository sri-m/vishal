json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :gender, :category, :address
  json.url contact_url(contact, format: :json)
end
