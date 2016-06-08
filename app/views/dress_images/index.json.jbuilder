json.array!(@dress_images) do |dress_image|
  json.extract! dress_image, :id, :dress_id, :image
  json.url dress_image_url(dress_image, format: :json)
end
