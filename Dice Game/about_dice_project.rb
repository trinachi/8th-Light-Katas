
class DiceSet
  @values = 0
   def roll(num)
    @values = num.times.map{ 1 + rand(6) }
   end
   def values
     @values
   end
end
