class WLI
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def like
        "#{name} like this"
    end
end