require 'pry'
class Song
attr_accessor :name,:artist,:genre
    @@count=0
    @@artists=[]
    @@names=[]
    @@genres=[]
    def initialize(name,artist,genre)
        @@count+=1
        @@names<<@name=name
        @@artists<<@artist=artist
        @@genres<<@genre=genre
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.names
        @@names
    end
    # def self.artists
    #     @@artists
    # end
    def self.count 
        @@count
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
    attr_reader:count
end

problems = Song.new("99 Problems", "Jay-Z", "rap")

# binding.pry