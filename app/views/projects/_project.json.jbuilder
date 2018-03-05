json.extract! project, :id, :organization_id, :title, :secret_key, :status, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
