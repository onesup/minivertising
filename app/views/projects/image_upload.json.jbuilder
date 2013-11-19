full_url = URI( root_url )
full_url.path = @picture.project_big.url
# Or maybe you want a link to some asset, like I did:
# full_url.path = image_path("whatevar.jpg")
full_url.to_s

pictures = [@picture]
json.files do
  json.array! pictures do |picture|
    json.name picture.project_big.filename
    json.size picture.project_big.size
    json.url full_url.to_s
    json.thumbnailUrl full_url.to_s
    json.deleteUrl 
    json.deleteType
  end
end