class Artist

    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name,self,genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        x = songs.map do |song|
            song.genre
        end
        x.uniq
    end


end