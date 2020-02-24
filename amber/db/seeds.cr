require "amber"
require "csv"
require "../config/application"

file_path = File.expand_path("db/movies.csv", Dir.current)
file = File.read(file_path, encoding: "ISO-8859-1")
csv = CSV.new(file, headers: true)

Movie.clear
movies = [] of Movie

csv.each do |row|
  movies << Movie.new(
    rank: row["Rank"],
    title: row["Title"],
    description: row["Description"],
    runtime: row["Runtime"],
    genre: row["Genre"],
    rating: row["Rating"],
    metascore: use_unless_na(row["Metascore"]),
    votes: use_unless_na(row["Votes"]),
    gross_earning_on_million: use_unless_na(row["Gross_Earning_in_Mil"]),
    director: row["Director"],
    actor: row["Actor"],
    year: row["Year"]
  )
end

Movie.import(movies)

def use_unless_na(value)
  value == "NA" ? nil : value
end
