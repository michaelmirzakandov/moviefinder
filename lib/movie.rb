class Movie

    attr_accessor = :name, :location, :time, :runtime, :theater
    attr_reader = :name

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

    def name
        @name
    end

    def location
        @location
    end
    
    def time
        @time
    end

    def runtime
        @runtime
    end

    def theater
        @theater
    end




end

