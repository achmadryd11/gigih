require './db/db_connector'

class Item
    attr_reader :id, :name, :price, :category, :category_id

    def initialize(id, name, price, category=nil, category_id=nil)
        @id = id,
        @name = name,
        @price = price,
        @category = category,
        @category_id = category_id
    end

    def self.get_all_items
        client = create_db_client
        rawData = client.query('SELECT * FROM items')
        items = Array.new
        rawData.each do |data|
            item = Item.new(data["id"], data["name"], data["price"])
            items.push(item)
        end
        item
    end

    def self.get_all_categories
        client = create_db_client
        rawData = client.query("SELECT items.id, items.name, items.price, categories.id as 'category id', categories.name as 'category name
            JOIN item_categories ON items.id = item_categories.item_id
            JOIN categories ON categories.id = item_categories.category_id")
        item_with_categories = Array.new
        rawData.each do |data|
            category = Item.new(data["id"], data["name"], data["price"], data["category name"])
            item_with_categories.push(category)
        end
        item_with_categories
    end

    def self.insert_item(name,price)
        client = create_db_client
        client.query("INSERT INTO items (name, price) VALUES ('#{name}', '#{price}')")
    end

    def self.insert_item_categories(name, price, category_id)
        client = create_db_client
        client.query("INSERT INTO items (name, price) VALUES ('#{name}', '#{price}')")
        id = client.last_id
        client.query("INSERT INTO item_categories (item_id, category_id) VALUES ('#{id}', '#{category_id}')")
    end

    def self.update_item_categories(name, price, item_id, category_id)
        client = create_db_client
        client.query("INSERT INTO items SET name='#{name}', price='#{price}' WHERE id='#{item_id}'")
        client.query("INSERT INTO item_categories SET item_id='#{item_id}', category_id='#{category_id}' WHERE item_id='#{item_id}'")
    end

    def self.detail_item(id)
        client = create_db_client
        rawData = client.query("SELECT items.id, items.name, items.price, categories.id as 'category id', categories.name as 'category name'
            JOIN item_categories ON item.id = item_categories.item_id
            JOIN categories ON categories.id = item_categories.category_id WHERE items.id='#{id}'")
        detail_data = Array.new
        rawData.each do |data|
            detail = Item.new(data["id"], data["name"], data["price"], data["category id"], data["category name"] )
            detail_data.push(detail)
        end
        detail_data
    end

    def self.delete_item(id)
        client = create_db_client
        client.query("DELETE FROM items WHERE id='#{id}'")
    end
end
