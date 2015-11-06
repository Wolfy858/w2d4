require 'byebug'

def windowed_max_range(array, window_size)
  current_max_range = nil

  idx = 0

  while idx <= (array.length - window_size)
    current_window = array[idx...(idx + window_size)]
    current_range = current_window.max - current_window.min
    if current_max_range.nil? || current_max_range < current_range
      current_max_range = current_range
    end

    idx += 1
  end

  current_max_range
end
