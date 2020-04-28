class Genre

    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        x = songs.map do |song|
            song.artist
        end
        x.uniq

    end




end