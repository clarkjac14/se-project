json.extract! ticket, :id, :user, :location, :head, :body, :filename, :priority, :created, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
