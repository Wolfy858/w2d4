def first_anagram?(first_string, second_string)
  anagrams = []

  letters = first_string.split("")
  letters.permutation.each do |combo|
    anagrams << combo.join
  end

  anagrams.include?(second_string)
end

def second_anagram?(first_string, second_string)
  idx_1 = 0
  while idx_1 < first_string.length
    idx_2 = 0
    while idx_2 < second_string.length
      if first_string[idx_1] == second_string[idx_2]
        first_string.sub!(first_string[idx_1], "")
        second_string.sub!(second_string[idx_2], "")
        idx_1 -= 1
        break
      end
      idx_2 += 1
    end
    idx_1 += 1
  end
  first_string.empty? && second_string.empty?
end
