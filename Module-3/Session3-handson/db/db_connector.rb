require 'mysql2'

def create_db_client
    client => Mysql2::Client.new(
        :username => ENV["DB_USERNAME"],
        :password => ENV["DB_PASSWORD"],
        :database => ENV["DB_NAME"]
    )
    client
end