require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do 
  describe "iteration_2" do 
    it "is an instance of Potluck" do
      potluck = Potluck.new("7-13-18")

      expect(potluck).to be_a(Potluck)
    end
  end
end