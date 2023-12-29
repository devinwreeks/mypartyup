json.extract! vote, :id, :user_id, :event_id, :vote_date, :venue_preference, :activity_preference, :created_at, :updated_at
json.url vote_url(vote, format: :json)
