require 'mysql2'
require './item'
require './category'


def create_db_client
    client = Mysql2::Client.new(
        :host => "localhost",
        :username => "root",
        :password => "MikoZZan@13",
        :database => "order_system_db"
    )
    client
end

def get_all_items
    client = create_db_client
    items = client.query(:sql"select*from items")
    items = Array.new
    rawData.each do |data|
        item = Item.new(data["id"], data["name"],data["price"])
        items.push(item)
    end
    items
end

def get_all_categories
    client = create_db_client
    rawData = cleint.query("SELECT * FROM categories")
    categories = Array.new
    rawData.each do |data|
        category = Category.new(data["id"], data["name"])
        categories.push(category)
    end
    categories
end

def get_all_items_with_categories
    client = create_db_client
    rawData = client.query("SELECT items.id, items.name, items.price, categories.id, categories.name
        FROM items
        JOIN item_categories ON items.id = item_categories.item_id
        JOIN categories ON item_categories.category_id = categories.id")
    items = Array.new
    rawData.each do |data|
        category = Category.new(data["category_id"], data["category_name"])
        item = Item.new(data["id"], data["name"], data["price"], category)
        item.push(item)
    end
    items
end