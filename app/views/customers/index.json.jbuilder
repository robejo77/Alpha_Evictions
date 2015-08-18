json.array!(@customers) do |customer|
  json.extract! customer, :id, :company, :contact, :address, :suite, :city, :state, :zip, :phone, :email, :fax
  json.url customer_url(customer, format: :json)
end
