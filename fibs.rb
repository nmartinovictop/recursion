
# write iterable that takes number and iterates through returns an array of x numbers

def fibs_iter(num_of_digits)

    arr = []

    left_num = 0 
    right_num = 1

    num_of_digits.times do |ele|
        if ele == 0
            arr << left_num
        elsif ele == 1
            arr << right_num
        else
            arr << left_num + right_num
            left_num, right_num = right_num, left_num + right_num
        end
    end


    return arr

end


def fibs_rec(num_of_digits)
    
    if num_of_digits == 1
        return [0]
    elsif num_of_digits == 2
        return [0,1]
    else
        fibs_rec(num_of_digits - 1) + [fibs_rec(num_of_digits-1)[-1] + fibs_rec(num_of_digits-1)[-2]]
    end


end







def merge_sort(array)

    if array.length == 1
        return array
    else
        left = merge_sort(array[0...array.length/2])
        right = merge_sort(array[array.length/2...array.length])
        
        #merge
        merge(left,right)


            
            

    end
        
    

end

#[2][3,1]

def merge(left, right)

    new_arr = []
    total = left.length + right.length
    while new_arr.length < total
        if !left.empty? && !right.empty?

            if left[0] < right[0]
                new_arr << left.shift
            else 
                new_arr << right.shift
            end

        elsif left.empty? && !right.empty?
            if right.length == 1
                new_arr << right.shift
            elsif
                
                right[0] <= right[1]
                new_arr << right.shift
            else 
                new_arr << right.slice!(1)
            end
        elsif right.empty? && !left.empty?
            if left.length == 1
                new_arr << left.shift
                
            elsif 
                left[0] <= left[1]
                new_arr << left.shift
            else 
                new_arr << left.slice!(1)
            end
        else
            puts "Broken"
        end
    end


    new_arr

end