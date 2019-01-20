class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist

        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = []
        @@genres.each do |genre|
            if !unique_genres.include?(genre)
                unique_genres << genre
            end
        end
        unique_genres
    end

    def self.artists
        unique_artists = []
        @@artists.each do |artist|
            if !unique_artists.include?(artist)
                unique_artists << artist
            end
        end
        unique_artists
    end

    def self.genre_count
        @@genres.uniq.map{|genre| [genre, @@genres.count(genre)]}.to_h
    end

    def self.artist_count
        @@artists.uniq.map{|artist| [artist, @@artists.count(artist)]}.to_h
    end

end