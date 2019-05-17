require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
