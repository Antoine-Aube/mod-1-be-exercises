require './lib/photograph'
require './lib/curator'
require './lib/artist'

RSpec.describe Curator do 
  let (:curator) {Curator.new}
  let (:photo_1) { Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
    })
  }

let (:photo_2) { Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    }) 
  }
let (:photo_3) { Photograph.new({
      id: "3",      
      name: "Ansels Butt",      
      artist_id: "2",      
      year: "2012"      
    }) 
  }
let (:photo_4) { Photograph.new({
      id: "4",      
      name: "My Butt",      
      artist_id: "3",      
      year: "2015"      
    }) 
  }

let (:artist_1) { Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    }) 
  }

let (:artist_2) {Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })
  }
let (:artist_3) {Artist.new({
      id: "3",      
      name: "Me",      
      born: "1991",      
      died: "N/A",      
      country: "United States"      
    })
  }

  describe "iniatilize" do 
    it {expect(curator).to be_a(Curator)}
    it {expect(curator.artists).to eq([])}
    it {expect(curator.photographs).to eq([])}
  end

  describe "curator class instance methods" do 
    it "adds photographs and artists" do 
      expect(curator.artists).to eq([])
      expect(curator.photographs).to eq([])
      
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      
      expect(curator.artists).to eq([artist_1, artist_2])
      expect(curator.photographs).to eq([photo_1, photo_2])
    end

    it "#find_artist_by_id()" do 
      expect(curator.artists).to eq([])
      expect(curator.photographs).to eq([])
      
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)

      expect(curator.find_artist_by_id("1")).to eq(artist_1)

    end
  end

  it "returns a list of all artists and their photographs" do 
    expect(curator.artists).to eq([])
    expect(curator.photographs).to eq([])
      
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)
    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)

    expect(curator.all_artists_with_photos).to be_a(Object)
  end

  it "#artists_with_multiple_photos" do 
    expect(curator.artists).to eq([])
    expect(curator.photographs).to eq([])
      
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)
    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)
    curator.add_photograph(photo_3)

    expect(curator.artists_with_multiple_photos).to eq(["Ansel Adams"])
  end

  it "#returns photograp by country" do 
  expect(curator.artists).to eq([])
  expect(curator.photographs).to eq([])
    
  curator.add_artist(artist_1)
  curator.add_artist(artist_2)
  curator.add_artist(artist_3)
  curator.add_photograph(photo_1)
  curator.add_photograph(photo_2)
  curator.add_photograph(photo_3)
  curator.add_photograph(photo_4)
  
  expect(curator.photographs_by_country("United States")).to eq([photo_2, photo_3, photo_4])
  end
  
end