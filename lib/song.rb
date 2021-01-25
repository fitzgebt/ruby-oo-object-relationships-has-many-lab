class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    
    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist != nil ? self.artist.name : nil
    end
end