json.extract! movie, :id, :title, :description, :category, :year, :trailer, :cover, :rating, :active, :publish, :schedule, :created_at, :updated_at
json.url movie_url(movie, format: :json)
