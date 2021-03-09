### ASSIGNMENT ###
# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology 

# expected output:
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]


def bubble_sort(array)

  num = array.length - 1
  num.times do
    (0...num).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  p array
  array
end

bubble_sort([4,3,78,2,0,2])

## PSEUDOCODE ##
=begin

repeat iteration by array length -1
  iterate through range of array length -1
    if array[index + 1] is > array[index]
          array[index], array[index + i] = array[index + 1], array[index]
        end
      return new array
    end

=end
