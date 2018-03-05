json.extract! help_ticket, :id, :user_id, :project_id, :subject, :body, :urgent, :status, :created_at, :updated_at
json.url help_ticket_url(help_ticket, format: :json)
