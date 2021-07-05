class Trainer
    attr_reader :name
    attr_accessor :salary

    @@all = []
    def initialize(name, salary = 30000)
        @salary = salary
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def clients
        Client.all.select {|client| client.trainer == self}
    end 

    def new_client(name)
        new_cli = Client.all.find {|client| client.name == name} || Client.new(name)
            new_cli.assign_trainer(self)
    end 

    def self.most_clients
        winner = Trainer.all.max_by { |trainer| trainer.clients.length}
        winner.salary += 1000
        winner
    end 

    def new_workout(client, location)
        Workout.new(client, location, self)
    end 

end 