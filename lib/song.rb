class Song
    attr_accessor :name, :artist, :genre

    @@count = 0;
    @@genres = []
    @@artists = []

    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
    end
    def initialize(name, artist, genre)
        @genre = genre
        @artist = artist
        @name = name
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end