require_relative 'greeting'
require_relative "endgame"
require_relative 'input'
require_relative 'stats'
require_relative 'movement'
require_relative 'roomlist'

class Player
    include Greeting
    include EndGame
    include Input
    include Stats
    include Movement
    include RoomList
    
    attr_accessor :hp, :attack, :name, :location, :inventory, :encounters

    def initialize
        @hp = 100
        @attack = 10
        @location = 0
        @inventory = Array[]
        @encounters = 0
        puts "what is your name?"
        print "> "
        name = $stdin.gets.chomp.capitalize
        @name = name
    end

end