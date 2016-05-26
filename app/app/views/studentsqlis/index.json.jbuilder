json.array!(@studentsqlis) do |studentsqli|
  json.extract! studentsqli, :id, :name, :age
  json.url studentsqli_url(studentsqli, format: :json)
end
