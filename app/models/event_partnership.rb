class EventPartnership < ApplicationRecord
  belongs_to :event
  belongs_to :partnership
end
