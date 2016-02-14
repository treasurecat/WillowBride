json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address, :state, :url, :summary, :picture
  json.url store_url(store, format: :json)
end
