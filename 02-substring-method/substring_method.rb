# Nik O'Brien
# Created Date: 4/18/2023

def count_substrings(my_string = "Hello", my_subs = ["Hell", "lo", "l", "x"])
    # convert the string and array to lowercase
    my_string = my_string.downcase
    my_subs = my_subs.map{ |item| item.downcase}

    # select only the items that are present in the string
    valid_sub = my_subs.select{ |item| my_string.include? item}
    valid_sub
    
    # create and iterate a new hash



end

puts count_substrings()