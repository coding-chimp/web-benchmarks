require "kemal"
require "granite"
require "granite/adapter/pg"
require "json"

DATABASE_URL = ENV.fetch("DATABASE_URL", "postgres://localhost/web_benchmark_development")
Granite::Connections << Granite::Adapter::Pg.new(name: "pg", url: DATABASE_URL)

class Movie < Granite::Base
  connection pg
  table movies

  column id : Int64, primary: true
  column rank : Int32?
  column title : String?
  column description : String?
  column runtime : Int32?
  column genre : String?
  column rating : Float64?, converter: Granite::Converters::PgNumeric
  column metascore : Int32?
  column votes : Int32?
  column gross_earning_on_million : Float64?, converter: Granite::Converters::PgNumeric
  column director : String?
  column actor : String?
  column year : Int32?
  timestamps
end

get "/" do |env|
  env.response.content_type = "application/json"
  movies = Movie.all("ORDER BY id ASC")
  movies.to_json
end

Kemal.run
