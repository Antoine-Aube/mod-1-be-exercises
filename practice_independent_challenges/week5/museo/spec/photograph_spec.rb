require "./lib/photograph"

RSpec.describe Photograph do 
  let (:photo_attributes) { attributes = {
    id: "2",
    name: "Ansel Adams",
    born: "1902",
    died: "1984",
    country: "United States"
  } 
}
  let (:photograph) { Photograph.new(photo_attributes) }
  describe "initialize" do 
    it {expect(photograph).to be_a(Photograph) }
  end
end