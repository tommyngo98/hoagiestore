json.extract! order, :id, :price, :billingmethod, :deliveryaddress, :paid, :created_at, :updated_at
json.url order_url(order, format: :json)
