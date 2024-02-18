require "./lib/artist"

RSpec.describe Artist do 
  let (:artist_attributes) { attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    } 
  }
  let (:artist) { Artist.new(artist_attributes) }

  describe "initialize" do 
    it {expect(artist).to be_a(Artist) }
    it {expect(artist.id).to eq("2") }
    it {expect(artist.name).to eq("Ansel Adams") }
    it {expect(artist.born).to eq("1902") }
    it {expect(artist.died).to eq("1984") }
    it {expect(artist.country).to eq("United States") }
  end

  describe "instance methods" do 
    it "#age_at_death" do 
      expect(artist.age_at_death).to eq(82)
    end
  end
end