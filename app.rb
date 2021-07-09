require_relative 'person'

jin = Person.new("Jin Sakai", 100, 50)
puts jin
puts "\n"

khotun = Person.new("Khotun Khan", 450, 50)
puts khotun
puts "\n"

def receive_damage(damage)
        if deflect_attack?
            puts "#{@name} deflected the attack"
        else
            @hp -= damage
        end
    end

loop do
    jin.attack(khotun)
    puts khotun
    puts "\n"
    break if khotun.dies

    khotun.attack(jin)
    puts jin
    puts "\n"
    break if jin.dies
end