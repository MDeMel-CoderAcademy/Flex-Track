require_relative 'Truck'
require_relative 'Van'
require_relative 'Bus'

class Vehicle_select

truck = Truck.new
van = Van.new
bus = Bus.new

 truck.travel(20 , 1900)
 van.travel(20 , 1900)
 bus.travel(20 , 1900)

 array = [truck , van , bus]

 array.sort_by {|v| v.last_trip_duration}

 array.each { |e| e.last_trip_duration.to_i.times do print "#" end ; print "... #{e.class} #{e.last_trip_duration} \n"}

end
