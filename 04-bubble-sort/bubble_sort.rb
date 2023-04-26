# Nik O'Brien
# Created Date: 4/23/2023

def bubble_sort(my_ary = [4,3,1,2])
    #iterate the amount of times as the length of our array
    my_ary.length.times do 
        # swap elements when the rocket operator equals 1
        my_ary.each_with_index { |i, index| my_ary[index], my_ary[index+1] = my_ary[index+1], my_ary[index] if (i <=> my_ary[index+1]) == 1 }
    end

    puts my_ary
end

bubble_sort([4,3,78,2,0,2])