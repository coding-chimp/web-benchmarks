class MovieRepository < Hanami::Repository
  def index
    movies.order { id.asc }.to_a
  end
end
