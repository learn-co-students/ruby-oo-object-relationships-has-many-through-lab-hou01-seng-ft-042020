class Song
    @@all = []
    attr_accessor :name, :artist, :genre

    def initialize(n,a,g)
        @name = n
        @artist = a
        @genre = g
        @@all << self
    end

    def self.all
        @@all
    end



end