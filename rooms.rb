### JUST FOR TESTING
### NOT FINISHED AT ALL
### RUNS IN A LOOP UNLESS EXITED

module Rooms

    def room1

        $player.location = 0
    
        puts "#{self.name}, you are standing in room #{$player.location}, there is a door in front of you.",
            "What would you like to do?",
            "[l]ook around the room...",
            "[g]o through the door...",
            "[e]xit the game..."
    
            print "> "
            input = $stdin.gets.chomp.downcase
    
            if input == "l"
                puts "#{self.name}, there is nothing much to see here",
                    "you are at #{$player.location} location.",
                    ""
                room1
            elsif
                input == "g"
                room2
            elsif
                input == "e"
                $player.end_game
            else
                puts "#{self.name},, I don't know what that means..."
                room1
            end
    end
    
    
    def room2
    
        $player.location = 1
    
        puts "#{self.name}, you are now in room #{$player.location}, there is a door behind you that you came in.",
            "what would you like to do?",
            "[l]ook around the room...",
            "[g]o back the way you came...",
            "[e]xit the game..."
    
            print "> "
            input = $stdin.gets.chomp.downcase
    
            if input == "l"
                puts "#{self.name}, there is nothing much to see here",
                    "you are at #{$player.location} location.",
                    ""
                room2
            elsif
                input == "g"
                puts "#{self.name}, you go back to the first room."
                room1
            elsif
                input == "e"
                $player.end_game
            else
                puts "#{self.name}, I don't know what that means..."
                room2
            end
    end

end