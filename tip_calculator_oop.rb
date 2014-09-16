# define a class
class Restaurant_Bill
	# constructor method
	def initialize
		@cost_of_meal
		@tax_percentage
		@tip_percentage
		@tax_value
		@tip_value
		@meal_with_tax
		@total_cost_of_meal
	end

	# accessor methods
	def printCostOfMeal
		@cost_of_meal
	end

	def printTaxPercentage
		@tax_percentage
	end

	def printTipPercentage
		@tip_percentage
	end
	
  #  setter methods
  def setCostOfMeal(value)
  	@cost_of_meal = value
  end

  def setTaxPercentage(value)
  	@tax_percentage = value
	end

	def setTipPercentage(value)
		@tip_percentage = value
	end

	# instance methods
	def getValue(string_request)
		puts string_request
		value_requested_s = gets
		value = Float(value_requested_s)
	end

	def getCostOfMeal
		self.setCostOfMeal(self.getValue("Enter the cost of your meal before tax:"))
	end

	def getTaxPercentage
		self.setTaxPercentage(self.getValue("Enter the tax in percentage:"))
	end

	def getTipPercentage
		self.setTipPercentage(self.getValue("Enter the tip in percentage:"))
	end

	def calculateValue(base_amount, percentage)
		value = base_amount * (percentage / 100.00)
	end

	def calculateTaxValue
		@tax_value = calculateValue(@cost_of_meal, @tax_percentage).round(2)
	end

	def calculateMealWithTax
		@meal_with_tax = @cost_of_meal.round(2) + self.calculateTaxValue
	end

	def calculateTipValue
		@tip_value = calculateValue(@meal_with_tax, @tip_percentage).round(2)
	end

	def calculateTotalCost
		@total_cost_of_meal = @meal_with_tax.round(2) + @tip_value.round(2)
	end

	def printReceipt
		puts "The pre-tax cost of your meal was $" + sprintf('%.2f', @cost_of_meal)
		puts "At " + sprintf('%.f', @tax_percentage) + "%, tax for this meal is $" + sprintf('%.2f', @tax_value) + "."
		puts "For a " + sprintf('%.f', @tip_percentage) + "% tip, you should leave $" + sprintf('%.2f', @tip_value) + "."
		puts "The grand total for this meal is then $" + sprintf('%.2f', @total_cost_of_meal) + "."
	end
end

# create an object
my_bill = Restaurant_Bill.new

# base price of the meal
my_bill.getCostOfMeal

# tax rate for the meal
my_bill.getTaxPercentage

# tip rate for the meal
my_bill.getTipPercentage

# run calculations to set remaining object variables
my_bill.calculateTaxValue
my_bill.calculateMealWithTax
my_bill.calculateTipValue
my_bill.calculateTotalCost

# output bill receipt
my_bill.printReceipt