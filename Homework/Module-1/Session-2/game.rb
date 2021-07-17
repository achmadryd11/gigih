require_relative 'person'
require_relative 'game'

class Game < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @percentage = 0.8
    end

    def take_damage(damage)
        if rand < @percentage
            puts "#{@name} deflects the attack"
        else
            @hitpoint -= damage
        end
    end
end