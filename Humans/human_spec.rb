# RSpec Testing for Assignment Human I
# ==============================================================================

#we are going to have to include our Project class in our spec file
require_relative 'human'

#this line enacts the Rspec library and calls the describe method that takes in
#the class Project, when doing so it expects to do something
RSpec.describe Human do
    it 'has the correct attributes' do
        fred = Human.new
        expect(fred.strength).to eq(3)
        expect(fred.stealth).to eq(3)
        expect(fred.intelligence).to eq(3)
        expect(fred.health).to eq(100)
    end #do it-attributes
end #do describe
