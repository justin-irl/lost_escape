require_relative 'greeting'
require_relative 'rooms'
require_relative "endgame"
require_relative 'input'

class Player
    include Greeting
    include Rooms
    include EndGame
    include Input

    MAX_HEALTH = 100
    ATTACK_POWER = 10
    
    attr_accessor :hp, :attack, :name, :location, :inventory

    def initialize
        @hp = MAX_HEALTH
        @attack = ATTACK_POWER
        @location = 0
        @inventory = Array[]
        puts "what is your name?"
        print "> "
        name = $stdin.gets.chomp.downcase
        @name = name
    end

end