json.array!(@slides) do |slide|
  json.extract! slide, :id, :name, :slimg
  json.url slide_url(slide, format: :json)
end
