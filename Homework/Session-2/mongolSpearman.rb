

class MongolSpearman < Villain
    def attack(damage)
        puts "#{@name} thrust #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end