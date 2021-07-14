require_relative 'person'

class Villain < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @flee_percentage = 0.5
        @flee = false
    end

    def take_damage(damage)
        @hitpoint -= damage
        if @hitpoint <= 50 
            flee if rand < @flee_percentage
        end
    end

    def flee
        @flee = true
        puts "#{@name} has fled the battlefield with #{@hitpoint} hitpoint left"
    end

    def flee?
        @flee
    end

    def removed?
        die? || flee?
    end
end
