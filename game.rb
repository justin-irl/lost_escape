require_relative 'greeting'
require_relative 'player'
require_relative 'rooms'

include Greeting
include Rooms

$player = Player.new
$player.hello
$player.room1