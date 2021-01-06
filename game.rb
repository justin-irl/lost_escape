# Require Classes
require_relative 'player'
require_relative 'world'

# Require Modules
require_relative 'greeting'
require_relative 'room'
require_relative 'endgame'
require_relative 'input'
require_relative 'stats'

# Include Modules
include Greeting
include Room
include EndGame
include Input
include Stats

# Start Game
$player = Player.new
$player.hello
$game = World.new
puts $help_menu
$game.room
