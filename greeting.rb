module Greeting
    def hello
        puts "Welcome to Lost Escape #{self.name}.\n", 
        "you have #{self.hp} total health."
    end

    def chains
        puts "#{self.name} is testing chains"
    end
end