# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

def find_one_candidate(candidates)

puts "Please type candidates ID number:"
id = gets.chomp.to_i

  array = []
  
  candidates.each do |x|
    if x[:id] == id
      array.push(x)
    end
  end
  return array.length > 0 ? array : "ID does not exist."
end


