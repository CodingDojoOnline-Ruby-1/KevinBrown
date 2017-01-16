class Mammal
    attr_accessor :alive
    def initialize
        @alive = true
        puts 'I am alive!'
        self
    def breathe
        puts 'Inhale and exhale'
        self
    end
end

puts 'I am in the mammal file'
