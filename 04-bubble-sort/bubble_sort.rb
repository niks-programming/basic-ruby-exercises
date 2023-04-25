# Nik O'Brien
# Created Date: 4/23/2023

def bubble_sort(my_ary = [4,3,1,2])

    # iterate and swap elements accordingly
    my_ary.each_with_index do |i,j|
        comparison = (i <=> my_ary[j+1])
        if comparison == 1
            my_ary[j], my_ary[j+1] = my_ary[j+1], my_ary[j]
            puts my_ary 
        end
    end
    
end

bubble_sort()