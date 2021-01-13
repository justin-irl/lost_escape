module RoomList
     
    $rooms = [

        # this is the list of rooms that a player will be able to interact with during the game
        # rooms use the first index (which is an int) for pulling the info into the game
        # index[1] is currently used for testing to ensure we can see the movemtn module is working
        # not all rooms will have items/monsters
        [0, 
            "room0", 

            "You are standing in a clearing. there is a road [n]orth, [e]ast, and [w]est.
            \nwhat direction do you want to go?", 
            
            "room0 description alt", 
            "room0 items"],
        
        [1, 
            "room1", 

            "after travelling east you can see the road ahead going [n]orth, or the road [w]est back the way you came.
            \nwhat do you want do?", 
            
            "room1 description alt", 
            "room1 items"],
        
        [2, 
            "room2", 

            "after travelling west you encounter a monster!", 
            
            "standing at a cross roads you see two directions and the corpse of a monster",

            "room2 items"],
        
        [3, 
            "room3", 
            
            "room3 description", 
            
            "room3 description alt", 
            "room3 items"],
        
        [4, 
            "room4", 
            
            "room4 description", 
            
            "room4 description alt", 
            "room4 items"],
        
        [5, 
            "room5", 
            
            "room5 description", 
            
            "room5 description alt", 
            "room5 items"]
        
        [6, 
            "room6", 
            
            "room6 description", 
            
            "room6 description alt", 
            "room6 items"]
    ]

end