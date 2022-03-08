# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology (using #sort would be pretty pointless,
# wouldn’t it?).

# I will need to loop through the array and switch two elements when element1
# is greater than element2. I will need to do this repeatedly inside a loop
# until there are no more switches on a pass through the array. Potential edge
# cases - single value array, all values are the same, negative numbers

def bubble_sort(array)
  loop do
    swapped = false
    break if array.length == 1 || array.length == 0
    array.each_with_index do |num2, i|
      num1 = array[i-1]
      if i == 0
        next
      else
        if num1 > num2
          array[i-1] = num2
          array[i] = num1
          swapped = true
        end
      end
    end
    break if swapped == false
  end

  return array
end

bubble_sort([1,3,2,9,6,5,8])
