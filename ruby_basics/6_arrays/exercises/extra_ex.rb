# 1.
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
  n.each {|num| num}

puts exercises([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# 2
# Same as above, but only print out values greater than 5.
  n.each do |num| 
    if num > 5 
      puts num
    end
  end


# 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
new_arr = n.select {|word| word % 2 ==1}

# 4
# Append 11 to the end of the original array. Prepend 0 to the beginning.
new_arr.push(11)
new_arr.unshift(9)

# 5
# Get rid of 11. And append a 3.
new_arr.pop
new_arr.push(3)

# 6
# Get rid of duplicates without specifically removing any one value.
uniques = new_arr.uniq

# 7
# What's the major difference between an Array and a Hash?



# the main difference between a hash and an object is that hashes are used moreso for quick look ups, key value pairs
  
config = { db_host: "localhost", db_port: 5432, timeout: 30 }

# objects are instances of Classes and should be used when you want to model complex entities with attributes and behaviors:

  class Car
    attr_accessor :make, :model, :year
    def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
    end
  end

  car = Car.new("Toyota", "Camry", 2021)

#   # 8
# Create a Hash, with one key-value pair, using both Ruby syntax styles.

  pbj = {toppings: ["bread", "peanut butter", "jam"]}

  hash = {:name => 'bob'} # <= old version
  hash = {name: 'bob'} # <= new version

#   # 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
  h = {a:1, b:2, c:3, d:4}

   # 1. Get the value of key `:b`.
puts h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
# 3. Remove all key:value pairs whose value is less than 3.5
puts h.delete_if { |key,value| value < 3.5 }

  a1 = Array.new
  a2 = Array.new 3
  a3 = Array.new 6, "coin"
  a4 = Array.new [11]
  a5 = Array.new (15) {|e| e * e}

  puts [a1, a2, a3, a4, a5].inspect

# output!!!
# [[], [nil, nil, nil], ["coin", "coin", "coin", "coin", "coin", "coin"], [11], [0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196]]



# separate to the exercise but cool to look at and think of time complexity etc


integers = [1, 2, 3, 4, 5]
# The length method returns the size of the array. The times method iterates the following block length times, passing in values from 0 to length-1. These numbers serve as indexes to the array in question.

integers.length.times do |idx|
    puts integers[idx]
end

# The each_with_index iterates the array and passes the element and its index to the given block. This way we can easily print the element and its index in one shot.

integers.each_with_index do |num, idx|
    puts "value #{num} has index #{idx}"
end

# puts lts[2..6].inspect
# puts lts[2...6].inspect

# We can use range operator inside the square brackets. In the first line we read elements from index 2 to 6, in the second line elements from 2 to 5.


# 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)


# yes!
# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]
