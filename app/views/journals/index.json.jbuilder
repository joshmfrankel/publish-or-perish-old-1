json.array!(@journals) do |journal|
  json.extract! journal, :id, :title, :editor, :description, :impact_factor, :approved
  json.url journal_url(journal, format: :json)
end
