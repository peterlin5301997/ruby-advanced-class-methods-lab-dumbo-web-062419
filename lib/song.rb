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
    song = Song.new
    @@all << song
    return song
  end

  def Song.new_by_name(name)
    song = Song.new
    song.name = name
    return song
  end

  def Song.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    return song
  end

  def Song.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end

  def Song.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def Song.alphabetical
    Song.all.sort_by do |song|
      song.name
    end
  end

  def Song.new_from_filename(filename)
    filename = filename.chomp(".mp3")
    array = filename.split(" - ")
    song = Song.new
    song.artist_name = array[0]
    song.name = array[1]
    return song
  end

  def Song.create_from_filename(filename)
    filename = filename.chomp(".mp3")
    array = filename.split(" - ")
    song = Song.new
    song.artist_name = array[0]
    song.name = array[1]
    @@all << song
    return song
  end

  def Song.destroy_all
    @@all.clear
  end

end
