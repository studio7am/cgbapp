json.array!(@otds) do |otd|
  json.extract! otd, :id, :name, :content
  json.url otd_url(otd, format: :json)
end
