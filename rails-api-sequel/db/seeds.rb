require "csv"

csv = CSV.read(Rails.root.join("db/movies.csv"), headers: true,  encoding: "ISO-8859-1")

def use_if_integer(value)
  value.to_i.to_s == value ? value : nil
end

def use_if_float(value)
  value.to_f.to_s == value ? value : nil
end

movies = csv.map do |line|
  {
    rank: line["Rank"],
    title: line["Title"],
    description: line["Description"],
    runtime: line["Runtime"],
    genre: line["Genre"],
    rating: line["Rating"],
    metascore: use_if_integer(line["Metascore"]),
    votes: use_if_integer(line["Votes"]),
    gross_earning_on_million: use_if_float(line["Gross_Earning_in_Mil"]),
    director: line["Director"],
    actor: line["Actor"],
    year: line["Year"],
    updated_at: Time.current,
    created_at: Time.current
  }
end

Movie.multi_insert(movies)
