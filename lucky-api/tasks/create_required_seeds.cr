require "csv"
require "../spec/support/boxes/**"

# Add seeds here that are *required* for your app to work.
# For example, you might need at least one admin user or you might need at least
# one category for your blog posts for the app to work.
#
# Use `Db::CreateSampleSeeds` if your only want to add sample data helpful for
# development.
class Db::CreateRequiredSeeds < LuckyCli::Task
  summary "Add database records required for the app to work"

  def call
    file_path = File.expand_path("db/movies.csv", Dir.current)
    file = File.read(file_path, encoding: "ISO-8859-1")
    csv = CSV.new(file, headers: true)

    MovieQuery.new.delete

    csv.each do |row|
      SaveMovie.create!(
        rank: row["Rank"].to_i,
        title: row["Title"],
        description: row["Description"],
        runtime: row["Runtime"].to_i,
        genre: row["Genre"],
        rating: row["Rating"].to_f,
        metascore: use_if_integer(row["Metascore"]),
        votes: use_if_integer(row["Votes"]),
        gross_earning_on_million: use_if_float(row["Gross_Earning_in_Mil"]),
        director: row["Director"],
        actor: row["Actor"],
        year: row["Year"].to_i
      )
    end

    puts "Done adding required data"
  end

  def use_if_integer(value)
    return nil if value == "NA"

    value.to_i
  end

  def use_if_float(value)
    return nil if value == "NA"

    value.to_f
  end
end
