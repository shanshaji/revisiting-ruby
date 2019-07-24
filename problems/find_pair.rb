#Find Pair Which Returns sum.
require 'set'
class FindPair
  attr_reader :list_of_numbers, :sum

  def initialize(array, sum)
    @list_of_numbers = array
    @sum = sum
  end

  def find_pair
    array_set = Set.new
    list_of_numbers.each do |num|
      temp = sum - num;
      if array_set.include?(temp)
        puts "Pair with given sum #{sum} is (#{num}, #{temp})"
      end
      array_set.add(num)
    end

  end
end

FindPair.new([-2,0,1,2,-1,3], 0).find_pair