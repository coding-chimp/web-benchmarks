Hanami::Model.migration do
  change do
    create_table :movies do
      primary_key :id

      column :rank, Integer
      column :title, String
      column :description, String
      column :runtime, Integer
      column :genre, String
      column :rating, Float
      column :metascore, Integer
      column :votes, Integer
      column :gross_earning_on_million, Float
      column :director, String
      column :actor, String
      column :year, Integer

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
