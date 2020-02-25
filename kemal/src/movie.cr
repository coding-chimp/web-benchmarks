require "granite"
require "granite/adapter/pg"

database_url = ENV.fetch("DATABASE_URL", "postgres://localhost/kemal_development")

if ENV.has_key?("MAX_POOL_SIZE")
  database_url = "#{database_url}?max_pool_size=#{ENV["MAX_POOL_SIZE"]}"
end

Granite::Connections << Granite::Adapter::Pg.new(name: "pg", url: database_url)

class Movie < Granite::Base
  connection pg
  table movies

  column id : Int64, primary: true
  column rank : Int32?
  column title : String?
  column description : String?
  column runtime : Int32?
  column genre : String?
  column rating : Float64?
  column metascore : Int32?
  column votes : Int32?
  column gross_earning_on_million : Float64?
  column director : String?
  column actor : String?
  column year : Int32?
  timestamps
end
