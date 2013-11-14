json.array!(@projects) do |project|
  json.extract! project, :title, :sub_title, :description, :category, :client, :made_at, :link, :project_image
  json.url project_url(project, format: :json)
end
