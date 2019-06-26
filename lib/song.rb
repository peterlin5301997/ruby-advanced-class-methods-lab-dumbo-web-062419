class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    @@all.push
  end

  def Song.new_by_name(songName)
    @name = songName
  end

  def Song.create_by_name(songName)
    @name = songName
    @@all << songName
  end

  def Song.find_by_name(songName)
    @@all.find do |song|
      song == songName
    end

end
