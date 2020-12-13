json.extract! movie, :id, :title, :overview, :poster, :relese, :revenue, :runtime, :budget, :language, :vote, :created_at, :updated_at
json.url movie_url(movie, format: :json)
