json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :subject
  json.url blog_url(blog, format: :json)
end
