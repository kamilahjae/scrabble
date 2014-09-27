module Game
  class Scrabble
    attr_accessor :word

      # create a hash that contains the values of each letter

  @@scoring_dict = {
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

        word.split("").each do |i|
        score += @@scoring_dict[:"#{i}"]
        end
      score
    end
  end
end

=begin
self.score notes:
1) .split("") splits the word into individual letters,
      and sets them as strings in an array;
2) .each do |i| begins the iteration for each letter in the array;
3) score += @@scoring_dict[:"#{i}"] searches the hash for the key that matches
      the letter and adds that value to the score. Used :"#{i}" to tell Ruby
      that the variable "i" is not a literal, just a variable that represents
      any key in the @@scoring_dict hash;
4) end, well, ends the loop;
5) score returns the total of the word!
=end
