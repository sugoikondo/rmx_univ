json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :body, :date
  json.url todo_url(todo, format: :json)
end
