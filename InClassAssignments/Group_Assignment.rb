class Student
    attr_accessor :language
    attr_reader :skill, :name
    def initialize name, language="Ruby"
        @name = name
        @language = language
        @skill = 100
    end
    def talk
        puts "Hello, my name is #{@name}"
        self
    end
    def pick_up_stack arg
        puts @skill += 25
        puts arg
        self
    end
end
s1 = Student.new("Mike")
# puts s1.skill
s1.talk.pick_up_stack("Python")
puts s1.skill