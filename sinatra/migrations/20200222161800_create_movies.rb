Sequel.migration do
  change do
    create_table(:movies) do
      primary_key :id

      Integer :rank
      String :title
      String :description
      Integer :runtime
      String :genre
      Float :rating
      Integer :metascore
      Integer :votes
      Float :gross_earning_on_million
      String :director
      String :actor
      Integer :year

      DateTime :created_at, null: false
      DateTime :updated_at, null: false
    end
  end
end
