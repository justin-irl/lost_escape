require_relative 'input'
require_relative 'roomlist'
require_relative 'movement'

class World

include Input
include RoomList
include Movement

    attr_accessor :wlocation

$welcome = <<~WELCOME

    \t#############################
    \t#         WELCOME           #
    \t#           TO              #
    \t#        LOST ESCAPE        #
    \t#############################

WELCOME
    
    
    def initialize
        puts $welcome
        $lamp_light = false
        $encounter = false
    end

end