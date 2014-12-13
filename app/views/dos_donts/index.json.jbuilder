json.array!(@dos_donts) do |dos_dont|
  json.extract! dos_dont, :id, :title, :category, :content
  json.url dos_dont_url(dos_dont, format: :json)
end
