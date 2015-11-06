def bad_two_sum?(arr, target_sum)

  arr.each_with_index do |first_element, first_index|
    ((first_index + 1)...arr.length).each do |second_index|
      if first_element + arr[second_index] == target_sum
        return true
      end
    end
  end

  false

end

### O(n^2) - which is quadratic time!

def okay_two_sum?(arr, target_sum)
  sorted = arr.sort
  sorted.each_with_index do |num, idx|
    target = target_sum - num
    return true if binary_search(sorted, target, num)
  end
  false
end

def binary_search(arr, target, to_skip)
  return nil if target == to_skip
  return nil if arr.empty?

  middle = arr.size / 2

  case target <=> arr[middle]
  when -1
    binary_search(arr.take(middle), target, to_skip)
  when 0
    middle
  when 1
    sub_answer = binary_search(arr.drop(middle + 1), target, to_skip)
    sub_answer.nil? ? nil : middle + 1 + sub_answer
  end

end
