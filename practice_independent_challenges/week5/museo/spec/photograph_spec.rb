require "./lib/photograph"

RSpec.describe Photograph do 
  let (:photo_attributes) { attributes = {
    id: "1",
    name: "Rue Mouffetard, Paris (Boy with Bottles)",
    artist_id: "4",
    year: "1954"
  } 
}
  let (:photograph) { Photograph.new(photo_attributes) }

  describe "initialize" do 
    it {expect(photograph).to be_a(Photograph) }
    it {expect(photograph.id).to eq("1") }
    it {expect(photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)") }
    it {expect(photograph.artist_id).to eq("4") }
    it {expect(photograph.year).to eq("1954") }
  end
end