require 'dotenv'
Dotenv.load
require 'pg'

class Bookmark
  def self.all(db_name = "bookmark_manager")
    connection = PG.connect(dbname: db_name)
    p connection
    result = connection.exec("SELECT * FROM bookmarks ORDER BY id;")
    result.map { |bookmark| bookmark['url'] }
  end
end
