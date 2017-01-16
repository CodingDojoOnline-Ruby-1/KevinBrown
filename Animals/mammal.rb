# File 1 of the 'Animals' Assignment

class Mammal

    attr_accessor :alive, :health

    def initialize
        @alive = true
        @health = 150
        puts 'I am alive!'
        self
    end #initialize-method

    def breathe
        puts 'Inhale and exhale'
        self
    end #breathe-method

    def display_health
        puts "My current health is #{@health}."
        self
    end #display_health method
    

end #Mammal Class

puts 'I am in the mammal file'
