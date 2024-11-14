json.extract! food, :id, :meal_id, :name, :quantity, :unit, :calories, :protein, :carbohydrates, :fat, :created_at, :updated_at
json.url food_url(food, format: :json)
