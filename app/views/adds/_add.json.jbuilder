json.extract! add, :id, :content, :brand, :magazine_id, :created_at, :updated_at
json.url magazine_add_url(@magazine, add, format: :json)
