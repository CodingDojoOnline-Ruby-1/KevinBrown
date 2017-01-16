# File 3 of the 'Animals' Assignment

require_relative 'mammal'

class Dog < Mammal #inherits from the Mammal class
    # def initialize
    #     self
    # end #initialize

    def who_am_i
        puts self
    end #who_am_i method

    def pet
        puts "I am being petted."
        @health += 5
        self
    end #pet method

    def walk
        puts "Oh boy, I am going for a walk."
        @health -= 1
        self
    end #walk method

    def run
        puts "Oh boy, oh boy! I am going for a run!!"
        @health -= 10
        self
    end #run

    def display_health
        puts "My current health is #{@health}."
        self
    end #display_health method


end #Dog class

phydeaux = Dog.new

phydeaux.walk.walk.walk.run.run.pet.display_health
