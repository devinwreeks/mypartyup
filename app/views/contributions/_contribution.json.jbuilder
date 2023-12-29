json.extract! contribution, :id, :user_id, :amount, :contribution_date, :event_id, :created_at, :updated_at
json.url contribution_url(contribution, format: :json)
