class Genre

    @@all = []
    attr_reader :genre
    def initialize(genre)
        @genre = genre
        @@all << self
    end

    def name()
        @genre
    end

    def songs()
        Song.all.select {|song| song.genre == self}
    end

    def self.all()
        @@all
    end

    def artists()
        Song.all.select {|song| song.genre == self}.map{|song| song.artist}
    end
end