class Workout
    attr_reader :trainer, :location, :client

    @@all = []
    def initialize(client, location, trainer = nil)
        @trainer = trainer
        @location = location
        @client = client
        @@all << self
    end 

    def self.all
        @@all
    end 

end 