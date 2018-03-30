class PigLatinizer

  def piglatinize(word)
    i = word.downcase.index(/[aeiou]/)
    replaced =  word[i..-1] + word[0...i]
    replaced + (word[0].match(/[aeiou]/i) ? "way" : "ay")
  end

  def to_pig_latin(words)
    words.split.map { |w| piglatinize(w) }.join(" ")
  end
end
