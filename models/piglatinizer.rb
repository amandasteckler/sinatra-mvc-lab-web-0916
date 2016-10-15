class PigLatinizer

  def piglatinize(word)
    vowels = "aeiouAEIOU"

    if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      pl_word = word[3..-1]
      pl_word += word[0] + word[1] + word[2] + "ay"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      pl_word = word[2..-1]
      pl_word += word[0] + word[1] + "ay"
    elsif !vowels.include?(word[0])
      pl_word = word[1..-1]
      pl_word += word[0] + "ay"
    elsif vowels.include?(word[0])
      word += "way"
    end
  end

  def to_pig_latin(sentence)
    indv_words = sentence.split(' ')
    indv_words.map { |word| piglatinize(word) }.join(' ')
  end

end
