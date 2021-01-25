class PigLatinizer
  
  def piglatinize(phrase)
    ind_words = phrase.split(" ")

    phrase_array = ind_words.map do |word|
      if word.chars[0].match?(/[aeoui]/i) #if starts with a vowel
        word += "way"
      else
        word_chunks = word.split(/(?<=[^aeiou])(?=[aeiou])/) #split between consonant and vowels
        consonant_start = word_chunks.shift
        word = word_chunks << consonant_start << "ay"
        word.join
      end
    end
    phrase_array.join(" ")
  end
end