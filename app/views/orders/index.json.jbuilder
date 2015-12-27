json.orders @orders do |order|
  json.id order.id
  json.total_price order.total_price
  json.items order.items, :id
end