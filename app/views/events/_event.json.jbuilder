json.extract! event, :id, :event_type, :event_date, :title, :speaker, :host, :published, :created_at, :updated_at
json.url event_url(event, format: :json)
