# File 3 of the 'Animals' Assignment

require_relative 'mammal'

class Dragon < Mammal #inherits from the Mammal class

    def initialize
        @health = 170
        self
    end #initialize

    def talk
        puts "This is a dragon!"
        self
    end #talk method

    def eating_humans
        puts "I am eating you, human. Burp"
        @health += 20
        self
    end #eating_humans method

    def attacking_town
        puts "Attacking a town, Grrrr!."
        @health -= 50
        self
    end #attacking_town method

    def fly
        puts "I am flying!!"
        @health -= 10
        self
    end #fly-method

end #Dragon class


puff = Dragon.new

puff.attacking_town.attacking_town.attacking_town.eating_humans.eating_humans
puff.fly.fly
puff.talk.display_health
