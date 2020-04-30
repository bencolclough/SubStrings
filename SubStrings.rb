# SubStrings

# Define a Dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Get a String from Console User and Convert Into An Array
puts "Enter text to analyse"
user_array = gets.chomp.downcase.split(" ")
p user_array

# use select method to return a new array with only the values present in the dictionary
dictionary_matches = user_array.select { |string| dictionary.include?(string)}


# Use Reduce method to count unique instances in the filtered array
def count_strings(dictionary_matches)
    dictionary_matches.reduce(Hash.new(0)) do |string, count|
    string[count] +=1
    string
    end
end

p count_strings(dictionary_matches)
