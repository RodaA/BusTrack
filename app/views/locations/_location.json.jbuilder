json.extract! location, :id, :LocationID, :coordinates_LA, :coordinates_LO, :time, :busID, :created_at, :updated_at
json.url location_url(location, format: :json)