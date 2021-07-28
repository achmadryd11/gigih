class WLI
    attr_reader :names

    def initialize(names)
        @names = names
    end

    def likes
        "#{names[0]}, #{name[1]} like this"
    end
end