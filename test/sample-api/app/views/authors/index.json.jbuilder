json.array!(@authors) do |author|
  json.extract! author, :id, :name, :bio
  json.url author_url(author, format: :json)
end
