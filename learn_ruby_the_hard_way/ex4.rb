cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90

# 100 - 30  = 70
cars_not_driven = cars - drivers

# 30
cars_driven = drivers

# 30 * 4 = 120
carpool_capacity = cars_driven * space_in_a_car

# 90 / 30 = 3
average_passengers_per_car = passengers / cars_driven

# 100
puts "There are #{cars} cars available."

# 30
puts "There are only #{drivers} drivers available."

# 70
puts "There will be #{cars_not_driven} empty cars today."

# 120
puts "We can transport #{carpool_capacity} people today."

# 90
puts "We have #{passengers} to carpool today."

# 3
puts "We need to put about #{average_passengers_per_car} in each car."