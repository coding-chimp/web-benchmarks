class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.integer :rank
      t.string :title
      t.text :description
      t.integer :runtime
      t.string :genre
      t.float :rating
      t.integer :metascore
      t.integer :votes
      t.float :gross_earning_on_million
      t.string :director
      t.string :actor
      t.integer :year

      t.timestamps
    end
  end
end
