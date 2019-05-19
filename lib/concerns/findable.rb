module Findable

  module ClassMethods
    def find_by_name(name)
      # @@songs.detect{|a| a.name == name}
      self.all.detect{|a| a.name == name}
    end
end
end
# def self.find_by_name(name)
#   @@songs.detect{|a| a.name == name}
# end
