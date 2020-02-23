class MovieSerializer < BaseSerializer
  def initialize(@movie : Movie)
  end

  def render
    {
      id: @movie.id,
      rank: @movie.rank,
      title: @movie.title,
      description: @movie.description,
      runtime: @movie.runtime,
      genre: @movie.genre,
      rating: @movie.rating,
      metascore: @movie.metascore,
      votes: @movie.votes,
      gross_earning_on_million: @movie.gross_earning_on_million,
      director: @movie.director,
      actor: @movie.actor,
      year: @movie.year,
      created_at: @movie.created_at,
      updated_at: @movie.updated_at
    }
  end
end
