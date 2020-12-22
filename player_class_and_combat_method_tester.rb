# class to set player health and get their name
# second class that sets monster
# adds combat test

class Player

    MAX_HEALTH = 100
    ATTACK_POWER = 10
    
    attr_accessor :hp, :attack

    def initialize()
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
    end

end

### ALLY CLASS, NOT NEEDED FOR NOW AND ONLY FOR TESTING
=begin
class Ally < Player

    DEFENSE_POWER = 20

    attr_accessor :denfense

    def defend()
        @denfense = DEFENSE_POWER
    end
end
=end

class Monster

    MAX_HEALTH = 20
    ATTACK_POWER = 5

    attr_accessor :hp, :attack
    
    def initialize()
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
    end

end

# set global vars for characters
$you = Player.new()
$ally = Ally.new()
$enemy = Monster.new()

def monster_hit_success
    ($you.hp - $enemy.attack).to_s
end

def player_hit_success
    ($enemy.hp - $you.attack).to_s
end

puts "1. it u and you have #{$you.hp.to_s} health"
puts "1. you also have #{$you.attack.to_s} attack", ""

puts "2. your ally has #{$ally.hp.to_s} health"
puts "2. and your ally has #{$ally.attack.to_s} attack"
puts "2. your ally has #{$ally.defend.to_s} denfense", ""

puts "3. The ememy has #{$enemy.hp.to_s} health"
puts "3. and has #{$enemy.attack.to_s} attack", ""

def combat
    puts "What would you like to do?",
        "[a]ttack",
        "[r]un away", ""
        
    print "> "
    choice = $stdin.gets.chomp

    if choice == "a"

        puts "you strike the monster for #{$you.attack.to_s} damage",
        "the monster now has #{($enemy.hp - $you.attack).to_s} remaining health"
        $enemy.hp = $enemy.hp - $you.attack

    elsif choice == "r"

        puts "you try to run away but when you turn the monster stikes you", "", 
        "you now have #{($you.hp - $enemy.attack).to_s} health remaining"
        $you.hp = $you.hp - $enemy.attack

        puts "what would you like to do now?", "",
        "keep [r]unning away",
        "go back and [a]ttack", ""

        print "> "
        choice = $stdin.gets.chomp

        if choice == "a"

            puts "you strike the monster for #{$you.attack.to_s} damage",
            "the monster now has #{($enemy.hp - $you.attack).to_s} remaining health"
            $enemy.hp = $enemy.hp - $you.attack

        elsif choice == "r"

            puts "you have successfully ran away"

        else 

            "i dont understand"

        end

    else

        puts "i don't know what that means...", ""
        combat

    end
end

combat

puts "", "battle result"
puts "you now have #{$you.hp}"
puts "and the monster now has #{$enemy.hp}"
