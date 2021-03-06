# File 2 of the 'Animals' Assignment

require_relative 'mammal'

class Cat < Mammal #inherits from the Mammal class

    def jerk
        puts 'scratching you...'
    end #method jerk
    
    def speak
        puts "Meow"
    end #method speak

    def who_am_i
        puts self
    end #method who_am_i

end #class Cat

chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'

puts 'I am in the cat file'
