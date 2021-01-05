### still in testing
### not working properly yet

require_relative 'endgame'

include EndGame

module Input

help_menu = <<HELPMENU
Welcome to the help Menu #{self.name}!
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

HELPMENU


    def input

        print "> "
        input = $stdin.gets.chomp.downcase

        if input == "h"
            puts help_menu
        elsif input == "exit"
            $player.end_game
        else
            puts "thanks"
        end
    end
end