json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :classroom_id
  json.url assignment_url(assignment, format: :json)
end
