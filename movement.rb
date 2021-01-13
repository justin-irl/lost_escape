module Movement

    # sets room with default description
    def room_set
        current_room = $rooms.assoc($player.location)
        puts current_room[1], current_room[2]
    end

    # sets room with alt description if required objective completed
    def room_set_alt
        current_room = $rooms.assoc($player.location)
        puts current_room[1], current_room[3]
    end

    # starting room
    def room0
        
        room_set
        player_input = $game.input

        case player_input
        when "e"
            $player.location = 1
            room1
            return $player.location
        when "w"
            $player.location = 2
            room2
            return $player.location
        when "n"
            $player.location = 3
            room3
            return $player.location
        else
            puts "i dont know that one..."
            room0
        end
    end

    def room1

        room_set
        player_input = $game.input

        case player_input
        when "n"
            $player.location = 4
            room_set
            return $player.location
        else
            puts "thanks - room1 finished"
        end
    end

    def room2
        room_set
        player_input = $game.input
    end

    def room3
        room_set
        player_input = $game.input
    end

    def room4
        room_set
        player_input = $game.input
    end

    def room5
        room_set
        player_input = $game.input
    end

    def room6
        room_set
        player_input = $game.input
    end


end