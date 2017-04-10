json.extract! question, :id, :title, :subject, :created_at, :updated_at
json.url question_url(question, format: :json)
