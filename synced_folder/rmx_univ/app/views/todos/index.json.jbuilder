json.array!(@todos) do |todo|
  json.extract! todo, :id, :text, :string, :date, :datetime
  json.url todo_url(todo, format: :json)
end
