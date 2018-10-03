class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  
  
   def self.create 
    song = self.new
    
    @@all << song
    song
  end
  
    def self.new_by_name(name) 
    song = self.new
    song.name=name
    
    song
  end
  
  def self.create_by_name(name) 
    song=self.new_by_name(name)
    @@all <<  song
    song
  end
  
  def self.find_by_name (name)
    
    @@all.each do |x|
      return x if x.name==name
    end
      return nil
  end


  
  def self.find_or_create_by_name(name)
    
    song=self.find_by_name (name)
    
    if song==nil
      self.create_by_name(name)
    else
      song
    end
    
  end
  
  
  
  def self.new_from_filename(filename)
    song=self.new
    song.name=filename.split("-")[1].split(".")[0].split
    
  end

end
