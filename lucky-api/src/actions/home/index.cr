class Home::Index < ApiAction
  get "/" do
    movies = MovieQuery.new.id.asc_order
    json MovieSerializer.for_collection(movies)
  end
end
