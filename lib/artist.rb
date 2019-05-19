require 'pry'

class Artist
  #Parent::Child
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name                     #can be called booth reader and writer
  attr_reader :songs                      #can be read but no changes can be made

  @@artists = []                          #class variabble, determines the # of objects (artists) being created; currently empty

  def initialize
    #@@artists << self                     #push the instance (self) of the class into the @@all class variable, on which they are being called
    super
    @songs = []                           #variable of instence; empty
  end

  # def self.find_by_name(name)                 #class method, refering to the class Artist, find by artists' name
  #   @@artists.detect{|a| a.name == name}       #iterate throught the class variable to detect (return the 1st item
  # end                                         #in the list) the first name in the array

  def self.all                              #"keeps track of the artists that have been created"
    @@artists
  end

#"can reset the artists that have been created"
#   def self.reset_all                        #reset_all method goes through all the songs and clears the list
#     self.all.clear
#   end
#
# #"can count how many artists have been created"
#   def self.count
#     self.all.count                      #count all songs in the array
#   end

  def add_song(song)
    @songs << song                      #add songs by sheveling song into the @song instance
    song.artist = self                  #add artists name of the songs
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }            #iterate through songs to check each song & add songs and artist (nested)
  end

  # def to_param                                    #converts its name to a url friendly parameter'
  #   name.downcase.gsub(' ', '-')                  #changing every word to lowercase and substitues spaces with '-'
  # end
end
