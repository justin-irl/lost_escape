#############################################
# Testing combat and hp tracking


#############################################
# Needs to be refactored to fit in the game #
#############################################


#############################################

#set player and monster classes
class Player

    MAX_HEALTH = 100
    ATTACK_POWER = 10
    
    attr_accessor :hp, :attack

    def initialize()
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
    end
end

class Monster

    MAX_HEALTH = 20
    ATTACK_POWER = 5

    attr_accessor :hp, :attack
    
    def initialize()
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
    end
end


#############################################

# set global variables for player and monster
$you = Player.new()
$enemy = Monster.new()


#############################################

# define hp trackers
def player_hp_tracker
    $you.hp = $you.hp - $enemy.attack
end

def monster_hp_tracker
    $enemy.hp = $enemy.hp - $you.attack
end


#############################################

# define hit success for strings
def player_hit_success
    ($enemy.hp - $you.attack).to_s
end

def monster_hit_success
    ($you.hp - $enemy.attack).to_s
end


#############################################

# define world messages
def intro
    puts "1. You have #{$you.hp.to_s} health",
        "1. You also have #{$you.attack.to_s} attack", ""

    puts "2. The ememy has #{$enemy.hp.to_s} health",
        "2. And has #{$enemy.attack.to_s} attack", ""
    battle_stats
end

def battle_stats
    puts "the current hp of the combatants is: ",
        "you: #{$you.hp.to_s}",
        "enemy: #{$enemy.hp.to_s}", + ""
end


#############################################

# define both characters successful attacks 
def combat_player_hit
    puts "you strike and the monster hp is now " + player_hit_success() + ""
    monster_hp_tracker()
end

def combat_monster_hit
    puts "the monster strikes you and your hp is now " + monster_hit_success() + ""
    player_hp_tracker()
end


#############################################

# start game:

intro
combat_player_hit
battle_stats
combat_monster_hit
battle_stats
combat_player_hit
battle_stats


#############################################

# Output should be as follows
=begin

1. You have 100 health
1. You also have 10 attack

2. The ememy has 20 health
2. And has 5 attack

the current hp of the combatants is: 
you: 100
enemy: 20

you strike and the monster hp is now 10
the current hp of the combatants is: 
you: 100
enemy: 10

the monster strikes you and your hp is now 95
the current hp of the combatants is: 
you: 95
enemy: 10

you strike and the monster hp is now 0
the current hp of the combatants is: 
you: 95
enemy: 0
=end