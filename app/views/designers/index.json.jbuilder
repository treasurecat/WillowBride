json.array!(@designers) do |designer|
  json.extract! designer, :id, :name, :description, :main_image, :location1, :location2, :location3
  json.url designer_url(designer, format: :json)
end
