# Require Classes
require_relative 'player'
require_relative 'world'

# Require Modules
require_relative 'greeting'
require_relative 'endgame'
require_relative 'input'
require_relative 'stats'
require_relative 'roomlist'
require_relative 'movement'

# Include Modules
include Greeting
include EndGame
include Input
include Stats
include RoomList
include Movement

# Start Game
$player = Player.new
puts "player starts at #{$player.location}"
$game = World.new
$player.hello.ready
puts $help_menu
# puts "is the lamp light? #{$lamp_light}"
$game.room0
puts "player location is now #{$player.location}"

# ---- global update testers ----

# puts "encounter state is: #{$encounter}"
# puts "is the lamp light? #{$lamp_light}"