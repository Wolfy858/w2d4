def first_anagram?(first_string, second_string)

  anagrams = []

  letters = first_string.split("")
  letters.permutation.each do |combo|
    anagrams << combo.join
  end

  anagrams.include?(second_string)
end

def second_anagram?(first_string, second_string)

end
