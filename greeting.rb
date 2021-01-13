module Greeting
    
    def hello
        puts "\nHi #{self.name}.\n", 
        "You have #{self.hp} total health, and a current attack power of #{self.attack}."
    end

    def ready
        puts "\nI hope you are ready to play!",
        "Your goal is to get to the end and solve the puzzle!",
        "\n\t!!! Beware of monsters !!!"
    end

end