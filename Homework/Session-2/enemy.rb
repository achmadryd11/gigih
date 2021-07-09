require_relative 'villain'
require_relaitve 'person'

class MongolArcher < Villain
    def attack(damage)
        puts "#{@name} shoots an arrow at #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class MongolSpearman < Villain
    def attack(damage)
        puts "#{@name} thrust #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class  MongolSwordsman < Villain 
    def attack(damage)
        puts "#{@name} Slashes #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end