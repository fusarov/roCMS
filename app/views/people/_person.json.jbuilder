json.extract! person, :id, :nombre, :apellido, :datos, :created_at, :updated_at
json.url person_url(person, format: :json)
