require 'pry'

class Song
  extend Memorable::ClassMethods #extend can only be used on class methods modules
  include Memorable::InstanceMethods #include can only be used on instance methods modules
  include Paramable::InstanceMethods #include can only be used on instance methods modules
  extend Findable::ClassMethods #extend can only be used on class methods modules

  attr_accessor :name
  attr_reader :artist

  @@songs = []



  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

end
