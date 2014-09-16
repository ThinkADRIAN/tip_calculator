# base price of the meal
meal = 10.01

# tax rate for the meal
tax = 8

# tip rate for the meal
tip = 20

tax_value = tax / 100.00 * meal 
meal_with_tax = meal + tax_value
tip_value = meal_with_tax * ( tip / 100.00 )

total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $" + sprintf('%.2f', meal)
puts "At " + sprintf('%.f', tax) + "%, tax for this meal is $" + sprintf('%.2f', tax_value) + "."
puts "For a " + sprintf('%.f', tip) + "% tip, you should leave $" + sprintf('%.2f', tip_value) + "."
puts "The grand total for this meal is then $" + sprintf('%.2f', total_cost) + "."