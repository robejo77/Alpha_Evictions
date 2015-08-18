json.array!(@properties) do |property|
  json.extract! property, :id, :name, :contact, :office, :direct
  json.url property_url(property, format: :json)
end
