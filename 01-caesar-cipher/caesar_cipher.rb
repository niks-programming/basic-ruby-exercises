# Nik O'Brien
# Created Date: 4/17/2023

def caesar_cipher(string = "Hello World", shift = 0)
    # first decompose the string into an array
    string = string.chars

    # map the array into integers
    string = string.map{ |letter| letter.ord}

    # apply the shift
    str_array = string.map{ |number| number + shift}

    # correct each special case using a for loop
    for number in 0..(str_array.length-1)
        # for lower case letters
        if str_array[number] > 122 && string[number] >= 97 && string[number] <= 122
            str_array[number] = (str_array[number] - 122) + 96
        # for upper case letters
        elsif str_array[number] > 90 && string[number] >= 65 && string[number] <= 90
            str_array[number] = (str_array[number] - 90) + 64
        # handle the spaces
        elsif string[number] == 32 || string[number] == 33
            str_array[number] = string[number]
        end
    end 

    # convert the string back to characters and to a string
    final_string = str_array.map{ |number| number.chr}.join

    final_string
end

puts caesar_cipher("What a string!", 5)