json.array!(@projects) do |project|
  json.extract! project, :id, :name, :caption, :description, :medium, :price
  json.url project_url(project, format: :json)
end
