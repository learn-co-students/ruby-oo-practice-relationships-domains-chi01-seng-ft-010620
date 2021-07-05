require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Pry.start

dave = Client.new("Dave")
sam = Client.new("Sam")
cesar = Trainer.new("Cesar")
john = Trainer.new("John")
christine = Client.new("Christine")
rp = Location.new("Rogers Park")
lakeview = Location.new("Lakeview")
ravenswood = Location.new("Ravenswood")
work1 = Workout.new(christine, rp)
work2 = Workout.new(dave, ravenswood, cesar)
work3 = Workout.new(sam, rp)
work4 = Workout.new(christine, lakeview, john)
work5 = Workout.new(sam, ravenswood)

christine.assign_trainer(john)
dave.assign_trainer(cesar)
cesar.new_client("Lindsay")
p cesar.new_workout(dave, rp)
