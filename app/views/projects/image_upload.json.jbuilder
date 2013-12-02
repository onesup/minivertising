full_url = URI( root_url )
full_url.path = @picture.project_big.url
pictures = [@picture] # https://github.com/blueimp/jQuery-File-Upload/wiki/Setup
json.project_picture_id @picture.id
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