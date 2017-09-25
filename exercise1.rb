trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

train111 = trains[7][:direction]

p train111

train80B = trains[5][:frequency_in_minutes]

p train80B

train610 = trains[2][:direction]

p train610

trains_north = []

# trains.each do |each_train|
#   each_train.each do |k, v|
#     if v == "north"
#       trains_north << each_train[:train]
#     end
#   end
# end


trains.each do |each_train|
  if each_train[:direction] == "north"
      trains_north << each_train[:train]
  end
end
p trains_north

# trains.each do |each_train|
#   each_train.each do |k, v|
#     if v == "east"
#       trains_east << each_train[:train]
#     end
#   end
# end

trains_east = []
trains.each do |each_train|
  if each_train[:direction] == "east"
      trains_east << each_train[:train]
  end
end
p trains_east


def trains_going(direction, trains)
  trains_by_direction = []
  trains.each do |each_train|
    if each_train[:direction] == direction
        trains_by_direction << each_train[:train]
    end
  end
  p trains_by_direction
end

trains_going("north", trains)
trains_going("south", trains)
