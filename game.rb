# Require Classes
require_relative 'player'

# Require Modules
require_relative 'greeting'
require_relative 'rooms'
require_relative 'endgame'
require_relative 'input'
require_relative 'test4'

# Include Modules
include Greeting
include Rooms
include EndGame
include Input
include Test4

# Start Game
$player = Player.new
$player.hello
# $player.room1