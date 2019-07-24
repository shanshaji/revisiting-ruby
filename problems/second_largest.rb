#Find Second Largest Element in A Array

class SecondLargest
  attr_reader :list_of_numbers

  def initialize(array)
    @list_of_numbers = array
  end

  def second_largest_element
    first = second = list_of_numbers[0]
     list_of_numbers.each do |num|
       if num > first
         second = first
         first = num
       elsif num > second && num != first
         second = num
       end
     end
     puts second
   end
end

SecondLargest.new([4,7,9,3,1,2]).second_largest_element