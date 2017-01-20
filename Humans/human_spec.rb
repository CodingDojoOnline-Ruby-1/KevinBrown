# RSpec Testing for Assignment Human I
# ==============================================================================
# This is the file to test the attributes of the Ruby file human I.  This list
# of attributes from the assignment are below:
# ==============================================================================
# => Let's create a class with four attributes: strength, intelligence, stealth,
#  and health.
# => Give the human a default value of 3 for strength, stealth and intelligence.
#  Health should have a default value of 100.
# => Now lets add a new method called attack, which when invoked, should attack
#  another object (i.e., decrease its health) if the object it is attacking
#  inherits from the Human class.
# ==============================================================================

#we are going to have to include our Project class in our spec file
require_relative 'human'

#this line enacts the Rspec library and calls the describe method that takes in
#the class Project, when doing so it expects to do something
RSpec.describe Human do
    before do
        fred = Human.new
    end
    # ==============================================================================
    #  Let's create a class with four attributes: strength, intelligence, stealth,
    #  and health.
    # ==============================================================================
    it 'should' do

    end

    # ==============================================================================
    #  Give the human a default value of 3 for strength, stealth and intelligence.
    #  Health should have a default value of 100.
    # ==============================================================================
    it 'has the correct attributes' do



        expect(fred.strength).to eq(3)
        expect(fred.stealth).to eq(3)
        expect(fred.intelligence).to eq(3)
        expect(fred.health).to eq(100)
    end #do it-attributes

    # ==============================================================================
    #  Now lets add a new method called attack, which when invoked, should attack
    #  another object (i.e., decrease its health) if the object it is attacking
    #  inherits from the Human class.
    #  Hint: you can check ancestors of a object by using .class.ancestors
    # ==============================================================================
    it 'should' do

    end

end #do describe
