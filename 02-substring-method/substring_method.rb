# Nik O'Brien
# Created Date: 4/18/2023

def count_substrings(my_string = "Hello", my_subs = ["Hell", "lo", "l", "x"])
    # convert the string and array to lowercase
    my_string = my_string.downcase
    my_subs = my_subs.map{ |item| item.downcase}

    # select only the items that are present in the string
    valid_sub = my_subs.select{ |item| my_string.include? item}

    # create and iterate a new hash
    valid_sub.reduce(Hash.new(0)) do |result, sub_str|
        result[sub_str] = my_string.scan(sub_str).length
        result
    end
end

puts count_substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])