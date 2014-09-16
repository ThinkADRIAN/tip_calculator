# base price of the meal
puts "Enter the cost of your meal before tax:"
meal_s = gets
meal = Float(meal_s)

def calculate_value(base_amount, percentage)
	value = base_amount * (percentage / 100.00)
end

# tax rate for the meal
puts "Enter the tax in percentage"
tax_s = gets
tax = Float(tax_s)

# tip rate for the meal
puts "Enter the tip in percentage"
tip_s = gets
tip = Float(tip_s)

tax_value = calculate_value(meal, tax).round(2)
meal_with_tax = meal.round(2) + tax_value.round(2)
tip_value = calculate_value(meal_with_tax, tip).round(2)

total_cost = meal_with_tax.round(2) + tip_value.round(2)

puts "The pre-tax cost of your meal was $" + sprintf('%.2f', meal)
puts "At " + sprintf('%.f', tax) + "%, tax for this meal is $" + sprintf('%.2f', tax_value) + "."
puts "For a " + sprintf('%.f', tip) + "% tip, you should leave $" + sprintf('%.2f', tip_value) + "."
puts "The grand total for this meal is then $" + sprintf('%.2f', total_cost) + "."