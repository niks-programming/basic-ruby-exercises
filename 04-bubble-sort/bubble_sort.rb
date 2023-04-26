# Nik O'Brien
# Created Date: 4/23/2023

def bubble_sort(my_ary = [4,3,1,2])
    # ideal sorted end state array
    sorted_ary = Array.new(my_ary.length-1, -1)
    # comparison array 
    comp_ary = []

    #iterate until our ending comp array matches the ideal sorted array
    until comp_ary == sorted_ary
        # iterate and swap elements accordingly
        my_ary.each_with_index do |i,j|
            comparison = (i <=> my_ary[j+1])
            if comparison == 1
                my_ary[j], my_ary[j+1] = my_ary[j+1], my_ary[j]
            end
        end

        # populate the comparison array by mapping the newly sorted array
        comp_ary = my_ary.each_cons(2).map{|i,j| i <=> j}
        comp_ary = comp_ary.join(",").gsub("0", "-1").split(",").map{|i| i.to_i}
    end

    puts my_ary
end

bubble_sort([4,3,78,2,0,2])