class Student
    attr_accessor :language, :skill_level
    def initialize(name, language="Ruby")
        @name = name
        @language = language
        @skill_level=100
    end
    def talk
        puts "Hello, I'm #{@name}."
        self
    end

    def pick_up_stack(stack)
        @skill_level += 25
        puts stack
        puts skill_level
        self
    end

end

t=Student.new("Todd", "Fortran").talk.pick_up_stack("Ada")

puts t
t.talk
