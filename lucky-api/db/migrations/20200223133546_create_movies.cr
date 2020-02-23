class CreateMovies::V20200223133546 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Movie) do
      primary_key id : Int64

      add rank : Int32
      add title : String
      add description : String
      add runtime : Int32
      add genre : String
      add rating : Float64
      add metascore : Int32?
      add votes : Int32?
      add gross_earning_on_million : Float64?
      add director : String
      add actor : String
      add year : Int32

      add_timestamps
    end
  end

  def rollback
    drop table_for(Movie)
  end
end
