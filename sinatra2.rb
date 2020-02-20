require 'sqlite3'
if File.exists?("maindata.db")
  # File.delete("maindata.db")
end
puts ('test!')
db = SQLite3::Database.new("maindata.db")
# puts (db.inspect)

# db.execute <<-SQL
#     create table users(
#       id integer primary key,
#       email varchar,
#       password varchar);
#   SQL
db.execute <<-SQL
    insert into users(email, password) values("bob@example.com", "bob123");
  SQL
# puts (db)  

rows = db.execute("SELECT * FROM users;")
rows.each do |row|
  if row.include? "bob@example.com"
    puts ("Database does contain Bob.")
  else
    puts ("This row is not Bob.")
  end
end  
# puts (rows)

#or
# db.execute <<-SQL
# 	DECLARE @users nvarchar(128);
# 	SELECT @users=* FROM users;
# 	PRINT @users;
#   SQL
