json.array!(@dresses) do |dress|
  json.extract! dress, :id, :designer_id, :location, :main_image, :price, :style, :garment_type, :tag, :name, :collection
  json.url dress_url(dress, format: :json)
end
