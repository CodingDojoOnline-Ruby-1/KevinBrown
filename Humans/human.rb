# Assignment: Human I
# ==============================================================================
#  Let's create a class with four attributes: strength, intelligence, stealth,
#  and health.
#  Give the human a default value of 3 for strength, stealth and intelligence.
#  Health should have a default value of 100.
#  Now lets add a new method called attack, which when invoked, should attack
#  another object (i.e., decrease its health) if the object it is attacking
#  inherits from the Human class.
# ==============================================================================

class Human

    attr_accessor

    def initialize strength, stealth, intelligence, health
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
        self
    end #initialize-method

    def attack attacked
        puts "I am attacking you, #{attacked}."
        self
    end #attack-method

    # def display_health
    #     puts "My current health is #{@health}."
    #     self
    # end #display_health method


end #Human Class
