# Class Project
# ==============================================================================
# Create a Project Class that has the following attributes:
# Project name, Project description.
# There should also be a method in there called elevator_pitch which should
# state what the project name is and what the project description is.
# ==============================================================================

class Project
    #your code here
    attr_accessor :name, :description
    # {attr_accessor, attr_reader or attr_writer}
    def initialize name, description
        @name = name
        @description = description
        @project_team = []
        puts "I am a new project."
    end

    def elevator_pitch
        @elevator_pitch
        puts "My project is called #{name}. It is #{description}."
    end #elevator_pitch

    def add_to_team *names
        names.each {|name| @project_team.push(name)}
    end #add_to_team

    def who_is
        puts "Team for #{self} is:"
        @project_team.each {|name| puts name}
    end #who_is

end #Project class

# ==============================================================================
# In TDD project testing, this section is no longer needed
# ==============================================================================
# project1 = Project.new("Project 1", "Description 1")
#
# puts project1.name #prints out Project 1
# project1.elevator_pitch #prints out 'Project 1, Description 1"
# ==============================================================================

# project1 = Project.new('Project 1', 'description 1')
# project2 = Project.new('Project 2', 'description 2')
# project1.elevator_pitch
# project2.elevator_pitch
# project1.add_to_team('Kevin')
# project2.add_to_team(['Vishnu', 'Valentyna', 'Todd'])
# project1.who_is
# project2.who_is
#|||||||||||||||||||||| === End of Code File === ||||||||||||||||||||||||||||||||||||||
