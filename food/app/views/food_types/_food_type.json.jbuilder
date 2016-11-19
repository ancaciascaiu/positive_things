json.extract! food_type, :id, :name, :calories, :desc, :created_at, :updated_at
json.url food_type_url(food_type, format: :json)