### See about adding a 'run away' command to last known location value
# [r]un away

module Input   
 
    def input
        
        puts "\nWhat would you like to do..?"
        print "> "
        input = $stdin.gets.chomp.downcase
    
        case input
        when "n", "s", "e", "w", "ne", "se", "sw", "nw"
            puts "travel"
            return input
        when "a"
            puts "attack!"
        when "c"
            puts "checks"
        when "g"
            puts $player.stats
            $game.input
        when "i"
            puts "inventory"
            $game.input
        when "h"
            puts $help_menu
            $game.input
        when "exit"
            $player.end_game
        else
            return input
        end
    end

$help_menu = <<~HELPMENU
    \n---------------------------------------

    This is the help menu.
    These are the commands for the game.
    The key enclosed in brackets [] is the action:

    Movement:
    \t[n] to move north
    \t[s] to move south
    \t[e] to move east
    \t[w] to move west
    \tThese can be combined for ne, sw, nw, etc

    Interaction:
    \t[a] attck your opponent
    \t[c] check an object
    \t[g] get info on your current location and stats
    \t[i] check your current inventory

    System:
    \t[h] display this help menu
    \ttype 'exit' to quit the game

    ---------------------------------------\n
HELPMENU

end
