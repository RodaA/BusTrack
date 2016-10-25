json.extract! bus, :id, :busID, :phoneNum, :created_at, :updated_at
json.url bus_url(bus, format: :json)