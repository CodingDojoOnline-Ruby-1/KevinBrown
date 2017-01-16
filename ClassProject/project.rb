class Project
    #your code here
    attr_reader :name, :description
    # {or attr_accessor or attr_writer}
    def initialize name, description
        @name = name
        @description = description
    end
    # def name
    #     @name = name
    #     self
    # end
    # def description
    #     @description = description
    #     self
    # end
    def elevator_pitch
        @elevator_pitch
        puts "My project is called #{name}. It is #{description}."
    end
end

project1 = Project.new("Project 1", "Description 1")

puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
