json.array!(@add_properties) do |add_property|
  json.extract! add_property, :id, :address, :apartment, :city, :state, :zipcode, :rooms, :bathrooms
  json.url add_property_url(add_property, format: :json)
end
