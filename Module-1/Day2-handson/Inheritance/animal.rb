class GF
    def initialize
        puts "In Grandfather call"
    end

    def grandfather_method
        puts "In Grandfather method call"
    end
end

class Father < GF
    def initialize
        puts "jamdawdawdal"
    end 
end 

class Son < Father 
    def initialize
        puts "auhuyawd"
    end
end

son = Son.new
son.grandfather_method
father = Father.new
