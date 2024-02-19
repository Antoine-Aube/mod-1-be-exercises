class Curator
  attr_reader :artists, :photographs 

  def initialize
    @artists = []
    @photographs = []
  end

  def add_artist(artist)
    @artists << artist
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def find_artist_by_id(id)
    @artists.find do | artist |
      artist.id == id
    end
  end

  def artist_photos(artist)
    @photographs.map do | photo |
      photo if photo.artist_id == artist.id
    end.compact
  end

  def all_artists_with_photos
    @artists.map do | artist |
      { 
        artist_name: artist.name,
        photos: artist_photos(artist)
      }
    end
  end

  def artists_with_multiple_photos
    all_artists_with_photos.select { |artist| artist[:photos].length > 1 }.map { |artist| artist[:artist_name]}
  end

  def photographs_by_country(country)
    artist_ids = artist_ids_by_country(country)
    @photographs.select { | photograph | artist_ids.include?(photograph.artist_id) }
  end

  def artist_ids_by_country(country) 
    @artists.select { | artist | artist.country == country}.map { | artist | artist.id }
  end
end