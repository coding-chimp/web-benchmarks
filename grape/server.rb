require "grape"
require "sequel"

DATABASE_URL = ENV.fetch("DATABASE_URL", "postgres://localhost/web_benchmark_development")
DB = Sequel.connect(DATABASE_URL)

class Movie < Sequel::Model
  def to_h
    {
      id: id,
      rank: rank,
      title: title,
      description: description,
      runtime: runtime,
      genre: genre,
      rating: rating,
      metascore: metascore,
      votes: votes,
      gross_earning_on_million: gross_earning_on_million,
      director: director,
      actor: actor,
      year: year,
      created_at: created_at,
      updated_at: updated_at
    }
  end
end

class Server < Grape::API
  format :json

  get "/" do
    content_type "application/json"

    Movie.order(:id).map(&:to_h)
  end
end
