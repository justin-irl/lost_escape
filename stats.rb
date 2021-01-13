module Stats

    
    def stats
        puts "\nYou currently have #{self.hp} hp left,",
        "Your attack power is #{self.attack},",
        "You are currently at #{self.location} location,",
        "You have had #{self.location} encounters."
    end
end



################################

# for whatever reason this next part is not working with interpolation
# self.name works but returns the name 'Stats'
# so it looks like it thinks that self is itself
# and it is not inheriting from player class
# even tho it is included the same as greeting
# and the above is working fine when not in a heredoc...


=begin
stats = <<~STATS
    "hi #{self.name}"
    "You currently have #{self.hp}",
    "Your attack power is ,",
    "You are currently at  location,",
    "You have had  encounters."
STATS

#######
# stacktrace

/lost_escape/: [apps-b-us-central1-2/default] (more-work *) [2.6.3p62] $ r game.rb
Traceback (most recent call last):
	5: from game.rb:2:in `<main>'
	4: from game.rb:2:in `require_relative'
	3: from /Users/justin/justin-irl/lost_escape/player.rb:4:in `<top (required)>'
	2: from /Users/justin/justin-irl/lost_escape/player.rb:4:in `require_relative'
	1: from /Users/justin/justin-irl/lost_escape/stats.rb:1:in `<top (required)>'
/Users/justin/justin-irl/lost_escape/stats.rb:4:in `<module:Stats>': undefined method `hp' for nil:NilClass (NoMethodError)


=end