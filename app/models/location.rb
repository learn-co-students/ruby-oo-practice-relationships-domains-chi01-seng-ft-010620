class Location
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def clients 
        Workout.all.select { |workout| workout.location == self}
    end 

    def self.least_clients
        Location.all.min_by { |location| location.clients.length}
    end 
end 