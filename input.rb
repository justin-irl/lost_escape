module Input   
 
    def input
    
        print "> "
        input = $stdin.gets.chomp.downcase
    
        case input
        when "h"
            puts $help_menu
        when "exit"
            $player.end_game
        when "g"
            puts $player.stats
        else
            return input
        end
    end

$help_menu = <<~HELPMENU
    \n---------------------------------------

    Welcome to the help Menu.
    Here are the commands for the game.
    The key enclosed in brackets [] is the action:

    Movement:
    \t[n] to move north
    \t[s] to move south
    \t[e] to move east
    \t[w] to move west
    \tThese can be combined for ne, sw, nw, etc

    Interaction:
    \t[a] attck your opponent
    \t[e] examine an object
    \t[g] get info on your current location and stats
    \t[i] check your current inventory

    System:
    \t type 'exit' to quit the game

    ---------------------------------------\n
HELPMENU

end
