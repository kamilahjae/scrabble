module Game
  class Scrabble
    attr_accessor :word

      # create a hash that contains the values of each letter
      # use a constant because this hash will never change
  SCORING_DICT = {
        :a => 1, :e => 1, :i => 1, :o => 1, :u => 1, :l => 1, :n => 1, :r => 1,
        :s => 1, :t => 1, :d => 2, :g => 2, :b => 3, :c => 3, :m => 3, :p => 3,
        :f => 4, :h => 4, :v => 4, :w => 4, :y => 4, :k => 5, :j => 6, :x => 6,
        :q => 7, :z => 7
        }

    #score words based on the letters it contains
    def self.score(word)
      score = 0
      # split word into indiv letters as strings in an array (["s", "a", "m"]);
      # for each letter, iterate over the hash to find the matching values;
      # total the word and return it

        word.downcase.split("").each do |letter|
        score += SCORING_DICT[letter.to_sym]
        end
      score
    end
  end

  # self.highest_score_from_array(array_of_words)
  #returns the word in the array with the highest word
  # EX: ["cat", "giraffe"]

    def self.highest_score_from(array_of_words)
      #create a variable for the highest_word = nil
      #iterate over each word in the array
        #get the score for each one
        # if word is greater than highest_word
        # highest_word = word
        # if highest scores are tied
        # use the one with the shortest length
      highest_word = ""
      array_of_words.each do |word|
        highest_word = higher_word(word, highest_word)
      end
      highest_word
    end

    #Note that it's better to use fewer tiles, so if the tip
    #score is tied between multiple words, pick the one with the fewest letters.

    def self.higher(word, new_word)
      word_score = self.score(word)
      high_word_score = self.score(new_word)

      if word_score > high_word_score
        word
      elsif word_score == high_word_score
        if word.length < new_word.length
          word
        end
      end
      new_word
    end

end


=begin
self.score notes:
1) .split("") splits the word into individual letters, and sets them
       as strings in an array (can use each_chars or word.chars.each);
2) .each do |i| begins the iteration for each letter in the array;
3) score += @@scoring_dict[:"#{i}"] searches the hash for the key that matches
      the letter and adds that value to the score. Used :"#{i}" to tell Ruby
      that the variable "i" is not a literal, just a variable that represents
      any key in the @@scoring_dict hash;
4) end, well, ends the loop;
5) score returns the total of the word!
=end
