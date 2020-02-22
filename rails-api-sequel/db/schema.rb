Sequel.migration do
  change do
    create_table(:movies) do
      primary_key :id
      column :rank, "integer"
      column :title, "text"
      column :description, "text"
      column :runtime, "integer"
      column :genre, "text"
      column :rating, "double precision"
      column :metascore, "integer"
      column :votes, "integer"
      column :gross_earning_on_million, "double precision"
      column :director, "text"
      column :actor, "text"
      column :year, "integer"
      column :created_at, "timestamp without time zone", :null=>false
      column :updated_at, "timestamp without time zone", :null=>false
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "SET search_path TO \"$user\", public"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20200222210004_create_movies.rb')"
  end
end
