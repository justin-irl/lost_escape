require_relative 'greeting'
require_relative 'rooms'

class Player
    include Greeting
    include Rooms

    MAX_HEALTH = 100
    ATTACK_POWER = 10
    
    attr_accessor :hp, :attack, :name, :location

    def initialize
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
        @location = 0
        puts "what is your name?"
        print "> "
        name = $stdin.gets.chomp
        @name = name
    end

end