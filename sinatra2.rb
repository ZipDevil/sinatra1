require 'sqlite3'
require 'sinatra'
require 'sinatra/reloader'

if File.exists?("maindata.db")
  File.delete("maindata.db")
end

db = SQLite3::Database.new("maindata.db")

db.execute <<SQL
  CREATE TABLE users (
    id integer PRIMARY KEY,
    email varchar,
    password varchar);
SQL

db.execute("INSERT INTO users(email,password) VALUES(?,?);",["aaron@samole.com", "pass123"])
db.execute("INSERT INTO users(email,password) VALUES(?,?);",["bob@samole.com", "pass123"])
db.execute("INSERT INTO users(email,password) VALUES(?,?);",["corey@samole.com", "pass123"])

get '/' do
  @my_array = db.execute("SELECT * FROM users;")
  erb :results
end

#puts my_array
