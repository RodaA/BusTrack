json.extract! route, :id, :routeID, :name, :description, :created_at, :updated_at
json.url route_url(route, format: :json)