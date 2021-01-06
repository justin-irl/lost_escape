require_relative 'input'
require_relative 'room'

class World
    include Input
    include Room


$welcome = <<WELCOME

#############################
#         WELCOME           #
#           TO              #
#        LOST ESCAPE        #
#############################

WELCOME
    
    
    def initialize
        puts $welcome
    end
end
