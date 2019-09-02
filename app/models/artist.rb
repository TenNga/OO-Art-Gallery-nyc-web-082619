class Artist

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end
  
  def paintings 
    paintings.all.select { |painting| painting.artist == self } 
  end
  
  def galleries
    self.paintings.map { |painting| painting.galleries }
  end
  
  def self.all 
    Painting.all.map { |painting| painting.artist } 
  end
  
  

end
