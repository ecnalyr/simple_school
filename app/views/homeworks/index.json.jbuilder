json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :work, :submitted, :assignment_id, :student_id
  json.url homework_url(homework, format: :json)
end
