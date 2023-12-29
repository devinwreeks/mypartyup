json.extract! event, :id, :name, :event_date, :location, :capacity, :budget, :company_id, :created_at, :updated_at
json.url event_url(event, format: :json)
