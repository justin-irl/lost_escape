module Greeting
    def hello
        puts "\nWelcome to \"Lost Escape\" #{self.name}.\n", 
        "You start with #{self.hp} total health,",
        "and an attack power of #{self.attack}."
    end

    def chains
        puts "#{self.name} is testing chains"
    end
end