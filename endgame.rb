module EndGame
    def end_game
        puts "Thanks for playing #{self.name} <3."
        exit(0)
    end

    def dead(why)
        puts "You died!", "Cause of death was #{why}",
            "Thanks for playing #{self.name} <3."
    end
end