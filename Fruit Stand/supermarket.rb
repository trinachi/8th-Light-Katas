# Problem: Supermarkets have strange pricing schemes. How can you determine the total price of a list of items?
# Apples: .50 each
# Oranges: 1.00 each, buy 2 and get 1 free
# Bananas: 3 for 1.00 or .50 each
# Grapes: 1.00 per pound (but how much for, say, 4 ounces?)
# Pears: 1.00 each; 25% off for $5 or more

class FruitSet
  attr_reader :apple, :orange, :banana, :grape, :pear, :price_total
  def initialize
    @apple = Apple.new
    @orange = Orange.new
    @banana = Banana.new
    @grape = Grape.new
    @pear = Pear.new
  end
  def fruit_values(num)
    @price_total = 0
    @values = num.times.map {
      val = [@apple, @orange, @banana, @grape, @pear].choice }
    @values.each do |fruit|
      fruit.quantity += 1
    end
    @values.uniq.each do |fruit|
      @price_total += fruit.get_total.to_f
    end
   end
   def shopping_list
      puts "Apples: " + apple.quantity.to_s + ", costs $" + apple.get_total.to_s
      puts "Oranges: " + orange.quantity.to_s + ", costs $" + orange.get_total.to_s
      puts "Bananas: " + banana.quantity.to_s + ", costs $" + banana.get_total.to_s
      puts "Grapes: " + grape.quantity.to_s + ", costs $" + grape.get_total.to_s
      puts "Pears: " + pear.quantity.to_s + ", costs $" + pear.get_total.to_s
      puts "Oranges: " + orange.quantity.to_s + ", costs $" + orange.get_total.to_s
      puts "Bananas: " + banana.quantity.to_s + ", costs $" + banana.get_total.to_s
      puts "Grapes: " + grape.quantity.to_s + ", costs $" + grape.get_total.to_s
      puts "Pears: " + pear.quantity.to_s + ", costs $" + pear.get_total.to_s
   end
end

class Fruit
  attr_accessor :quantity
  attr_reader :price
  def initialize
    @shopping_cart = []
    @quantity = 0
  end
  def find_quantity
    @all_fruit = FruitSet.new
    @all_fruit.fruit_values()
    return @all_fruit
  end
end

class Apple < Fruit
  def initialize
    super
    @price = 0.5
  end
  def get_total
    (@price * @quantity)
  end
end

class Orange < Fruit
  def initialize
    super
    @price = 1
  end
  def get_total
    ((@quantity % 3) + (2.0/3.0) * (@quantity - (@quantity % 3)))
  end
end

class Banana < Fruit
  def initialize
    super
    @price = 0.50
  end
  def get_total
    ((0.50 * (@quantity % 3)) + (1.00/3.00) * (@quantity - (@quantity % 3)))
  end
end

class Grape < Fruit
  # This fruit is measured in pounds/ounces
  def initialize
    super
    @price = 1
  end
  def get_total
    (@price * @quantity)
  end
end

class Pear < Fruit
  def initialize
    super
    @price = 1
  end
  def get_total
    if @quantity >= 5
      (0.75 * @quantity)
    else
      (@price * @quantity)
    end
  end
end

fruit_set = FruitSet.new
fruit_set.fruit_values(10)

fruit_set.shopping_list
puts "Total cost: $" + fruit_set.price_total.to_s

