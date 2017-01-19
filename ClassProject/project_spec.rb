# RSpec Testing
# ==============================================================================
# We showed how to test an attribute and expect a value to be returned.
# The same thing can happen for a method. A method just returns a result of some
# sort or enacts an action which then affects something. You noticed that we have
# a method called elevator_pitch that we can test as well. In order to test our
# elevator_pitch method, we will add on to our previous rspec file.
# ==============================================================================
# Let's make sure our test passes. We should get 0 failures.
#  Add a new method to our Project Class called add_to_team (it should add a new team_member)
#  Write an RSpec test for the newly added method
# ==============================================================================


#we are going to have to include our Project class in our spec file
require_relative 'project'
# require 'active_support/core_ext/kernel/reporting'
# active_support/reporting is no longer required to test output. 

#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe Project do
    #now we can have Rspec test our Project class
    it 'has a getter and setter for name attribute' do
        # now we can test our Project class
        # lets create a new project and make sure we can set the name attribute
        project = Project.new("Project Name", "I am a project")
        project.name = "Changed Name"
        # we should be able to run that code, now lets make sure its changed.
        # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
        expect(project.name).to eq("Changed Name")
    end #do has getter

    # building off our previous example lets add a test to make sure our method returns the correct value
    #lets create two new projects
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')

    #if we call elevator_pitch method we should expect to get that project name and description back
    it 'Project1 has a method elevator_pitch to explain name and description' do #Testing Project1
        STDOUT.should_receive(:puts).with('My project is called Project 1. It is description 1.')
        project1.elevator_pitch
    end

    it 'Project2 has a method elevator_pitch to explain name and description' do #Testing Project2
        STDOUT.should_receive(:puts).with('My project is called Project 2. It is description 2.')
        project2.elevator_pitch
    end

end #describe - Project
