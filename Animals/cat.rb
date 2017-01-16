class Cat < Mammal #inherits from the Mammal class
    def jerk
        puts 'scratching you...'
    end
    def speak
        puts "Meow"
    end
    def who_am_i
        puts self
    end
end
chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'

puts 'I am in the cat file'
require_relative 'mammal'
