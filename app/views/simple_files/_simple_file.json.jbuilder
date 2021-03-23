json.extract! simple_file, :id, :name, :desc, :category, :created_at, :updated_at
json.url simple_file_url(simple_file, format: :json)
