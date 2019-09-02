class Artist

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end
  
  def paintings 
    Paintings.all.select { |painting| painting.artist == self } 
  end
  
  def galleries
    self.paintings.map { |painting| painting.gallery }
  end
  
  def cities 
    self.galleries.map { |gallery| gallery.city }
  end
  
  def self.total_experience
    allArtist = Painting.all.map { |painting| painting.artist }
    allArtist.map { |artist| artist.years_experience }
    allArtist.sum 
  end
  
  def self.most_prolific
    allArtist = Painting.all.map { |painting| painting.artist }
    allArtist.
  end
  
  def self.all 
    Painting.all.map { |painting| painting.artist } 
  end
  
  

end
