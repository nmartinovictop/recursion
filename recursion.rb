
def factorial(n)
    if n == 1
        return n 
    end

    n * factorial(n-1)
end


def palindrome(word)

    if word[0] != word[-1]
        return false
    else
        return true
    end

    palindrome(word[1..-2])

end


def bottles_of_beer(bottles)

    if bottles == 0
        puts "no more bottles of beer on the wall"
        return
    end

    puts "#{bottles} of beer on the wall"
    bottles_of_beer(bottles-1)
end



def fibonacci(n)

    if n == 0 || n == 1
        return n
      
    end

    fibonacci(n-1) + fibonacci(n-2)

end

def array_flattenter(array)

    arr = []
    p array
    array.each do |ele|
        if ele.is_a?(Array)
            result = array_flattenter(ele)
            result.each do |ele|
                p ele
                arr << ele
            end
            
        else
            arr << ele
            arr
        end
    end
    
    arr
end

# array_flattenter([[1,2]])
# array_flattenter([[1,2],[3,4,[5,6]]])

# [1,2]
# result = arr[1] 



def roman_y(year)
    roman_mapping = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
      }
    roman = ''

    roman_mapping.each do |k,v|

        if year / k >= 1
            (year/k).times do |e|
                year -= k
                roman += v
            end
            roman_y(year)
        end
    end


    roman
end


def roman_to_numeral(roman_string)

    if roman_string == '' || roman_string == nil
        return 0
    end

    num = 0

    roman_mapping = {
        "M" => 1000,
        "CM" => 900,
        "D" => 500,
        "CD" => 400,
        "C" => 100,
        "XC" => 90,
        "L" => 50,
        "XL" => 40,
        "X" => 10,
        "IX" => 9,
        "V" => 5,
        "IV" => 4,
        "I" => 1
      }

    if roman_string[0] == "C"
        if roman_string[1] == "M" || roman_string[1] == 'D' 
            string_to_check = roman_string[0..1]
        else
            string_to_check = roman_string[0]
        end
    end

    if roman_string[0] == "X"
        if roman_string[1] == "C" || roman_string[1] == 'L' 
            string_to_check = roman_string[0..1]
        else
            string_to_check = roman_string[0]
        end
    end

    if roman_string[0] == "I"
        if roman_string[1] == "X" || roman_string[1] == 'L' 
            string_to_check = roman_string[0..1]
        else
            string_to_check = roman_string[0]
        end
    end

    if roman_string != 'I' && roman_string != 'C' && roman_string != 'X'
        string_to_check = roman_string[0...1]
    end

    
    num += roman_mapping[string_to_check]

    num += roman_to_numeral(roman_string[string_to_check.length...roman_string.length])





end