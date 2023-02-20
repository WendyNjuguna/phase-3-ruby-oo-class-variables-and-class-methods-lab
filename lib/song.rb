class Song
    @@count =0
    @@artists =[]
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        # add elements to array
        # method ? = arr.push
        @@artists.push(@artist)
        @@genres.push(genre) 
    end
    # return created songs
    def self.count
        @@count +=1
    end
    def self.count
        @@count
    end

    # return artists
    # def self.artists
    #     @@artists
    # end
    def self.artists
        @@artists.each {|a|a }.uniq
    end

    #def of return genres
    def self.genres
        @@genres.each{|a|a}.uniq
    end
    # def of genre_count
    def self.genre_count
        @@genres.tally
    end
    # def of artist_count
    def self.artist_count
        @@artists.tally
    end
end