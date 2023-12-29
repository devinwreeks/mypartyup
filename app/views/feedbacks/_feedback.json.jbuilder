json.extract! feedback, :id, :user_id, :event_id, :feedback_text, :rating, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
