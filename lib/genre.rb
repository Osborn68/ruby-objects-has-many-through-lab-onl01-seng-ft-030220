require 'pry'

class Genre 
  
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def songs
    Song.all.select {|song| song.genre == self}
  end 
  
  def self.all
    @@all
  end 
  
  def artists
    Song.all.select {|song| song.genre == self}.map {|map| map.artist}
  end
  
end