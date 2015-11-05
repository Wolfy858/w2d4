def first_anagram?(first_string, second_string)
  anagrams = []

  letters = first_string.split("")
  letters.permutation.each do |combo|
    anagrams << combo.join
  end

  anagrams.include?(second_string)
end

def second_anagram?(first_string, second_string)

  duped_first_string = first_string.dup
  duped_second_string = second_string.dup
  idx_1 = 0
  while idx_1 < first_string.length
    duped_first_string.sub!(first_string[idx_1], "")
    duped_second_string.sub!(first_string[idx_1], "")
    idx_1 += 1
  end
  duped_first_string == duped_second_string
end

def third_anagram?(first_string, second_string)
  sorted1 = first_string.split("").sort.join
  sorted2  = second_string.split("").sort.join

  sorted1 == sorted2
end

def fourth_anagram?(first_string, second_string)
  h1_string = Hash.new(0)
  h2_string = Hash.new(0)

  idx = 0
  while idx < first_string.length
    h1_string[first_string[idx]] += 1
    h2_string[second_string[idx]] += 1
    idx += 1
  end

  h1_string == h2_string

end
