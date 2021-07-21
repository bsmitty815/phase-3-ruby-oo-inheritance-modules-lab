require 'pry'

class Artist
  extend Memorable::ClassMethods #extend can only be used on class methods modules
  include Memorable::InstanceMethods #include can only be used on instance methods modules
  include Paramable::InstanceMethods #include can only be used on instance methods modules
  extend Findable::ClassMethods #extend can only be used on class methods modules
 

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
