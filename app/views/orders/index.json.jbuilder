json.array!(@orders) do |order|
  json.extract! order, :id, :sub_total, :sales_tax, :grand_total, :customer_id
  json.url order_url(order, format: :json)
end
