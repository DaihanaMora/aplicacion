json.array!(@lists) do |list|
  json.extract! list, :id, :clinic, :usuario
  json.url list_url(list, format: :json)
end
