json.array!(@evictions) do |eviction|
  json.extract! eviction, :id, :plantiff, :defendant, :case, :address, :city, :state, :zip, :phone, :h_s_v, :scheduled, :ejected
  json.url eviction_url(eviction, format: :json)
end
