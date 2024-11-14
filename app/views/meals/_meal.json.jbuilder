json.extract! meal, :id, :day_id, :meal_type, :notes, :created_at, :updated_at
json.url meal_url(meal, format: :json)
