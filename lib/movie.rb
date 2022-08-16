class Movie

    attr_accessor  :name, :location, :time, :runtime, :theater


    @@all = []

    def initialize(movie_hash)
        @name = movie_hash[:name]
        @location = movie_hash[:location]
        @time = movie_hash[:time]
        @runtime = movie_hash[:runtime]
        @theater = movie_hash[:theater]
        @@all << self
    end

    def self.create_from_collection(movies_array)
        movies_array.each  {|s| s = self.new(s)}
    end

    def self.all
        @@all
    end




end

def trees
    tree = "oak"
    if tree == "oak"
        "oak"
    else 
        "pine"
    end
    "fur"
end

