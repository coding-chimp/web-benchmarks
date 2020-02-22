require "csv"

csv = CSV.read(Rails.root.join("db/movies.csv"), headers: true,  encoding: "ISO-8859-1")

movies = csv.map do |line|
  {
    rank: line["Rank"],
    title: line["Title"],
    description: line["Description"],
    runtime: line["Runtime"],
    genre: line["Genre"],
    rating: line["Rating"],
    metascore: line["Metascore"],
    votes: line["Votes"],
    gross_earning_on_million: line["Gross_Earning_in_Mil"],
    director: line["Director"],
    actor: line["Actor"],
    year: line["Year"],
    updated_at: Time.current,
    created_at: Time.current
  }
end

Movie.insert_all!(movies)
