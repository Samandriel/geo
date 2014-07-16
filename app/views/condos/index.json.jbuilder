json.array!(@condos) do |condo|
  json.extract! condo, :id, :codo_name, :address, :street, :district, :city, :country, :zip_code, :latitude, :longitude
  json.url condo_url(condo, format: :json)
end
