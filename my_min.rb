require 'byebug'

def my_min(array)
  array.each_with_index do |first_element, first_idx|
    return first_element if array.all? { |other_element| first_element <= other_element }
  end
end

def better_my_min(array)
  min = array[0]
  array.each do |element|
    min = element if element < min
  end
  min
end
