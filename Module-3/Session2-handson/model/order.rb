require '../db/db_connector'

class Order
    attr_accessor :reference_no, :customer_name, :date, :items

    def intialize(param)
        @reference_no = 