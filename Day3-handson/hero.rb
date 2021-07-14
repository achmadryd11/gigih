require_relative 'person'

class Hero < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @percentage = 0.8
        @heal_point = 50
    end

    def take_damage(damage)
        if rand < @percentage
            puts "#{@name} deflects the attack"
        else
            @hitpoint -= damage
        end
    end

    def heal(other_hero)
        other_hero.take_healing(@heal_point)
end