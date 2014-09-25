json.array!(@pageimages) do |pageimage|
  json.extract! pageimage, :id, :name, :pgimg
  json.url pageimage_url(pageimage, format: :json)
end
