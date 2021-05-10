class Van

  attr_accessor :speed ,:fuel_consumption ,:fuel_tank_size ,:refuel_time ,:current_fuel , :last_trip_duration
  attr_reader :speed ,:fuel_consumption ,:fuel_tank_size ,:refuel_time ,:current_fuel, :last_trip_duration

  def initialize

   @speed            = 90     # kmph
   @fuel_consumption = 7.2     # per 100km at given speed
   @fuel_tank_size   = 70      # litres
   @refuel_time      = 0.12     # 480 seconds
   @current_fuel     = 0.0      # litres

   @distance_per_litre = 100 / @fuel_consumption
   @distance_covered = 0.0
   @last_trip_duration = 0
 end

  def refuel(amount = @fuel_tank_size)
    @current_fuel =  amount

    if amount == @fuel_tank_size
      return @refuel_time
    else
      return ((amount / 10)/ 60)
    end
  end

  def travel(start_fuel = 20 , distance = 100)

   travel_time = 0.0
   @current_fuel = start_fuel


   while (distance > 0 and distance != 0 )

   @distance_covered = (@current_fuel * @distance_per_litre)

     if(@distance_covered > distance)

        travel_time += distance/@speed
        distance = 0

     else

     travel_time += (@distance_covered/@speed)
     # now we need to refuel

     travel_time += (refuel)
     distance -= @distance_covered

     end

   end

   @last_trip_duration = travel_time
 end

end
