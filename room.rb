module Room

    def room

        puts "you are standing in a room",
        "what do you want to do"

        player_input = $game.input

        case player_input
        when "q"
            puts "case 1"
        when "l"
            puts "case 2"
        else
            print "!"
        end

    end
end