require "sequel"

DATABASE_URL = ENV.fetch("DATABASE_URL", "postgres://localhost/roda_development")
DB = Sequel.connect(DATABASE_URL)