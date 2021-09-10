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
       # @@genres.tally - tally method to do this result /another way
        genre_hash={}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre]+=1
            else
                genre_hash[genre]=1
            end
        end
        genre_hash
    end
    def self.artist_count
        # @@artists.tally
        artist_hash={}
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist]+=1
            else
                artist_hash[artist]=1
            end
        end
        artist_hash
    end
    attr_reader:count
end

problems = Song.new("99 Problems", "Jay-Z", "rap")

# binding.pry