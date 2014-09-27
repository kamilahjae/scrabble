require './Scrabble.rb'

describe ScrabbleGame::Scrabble do

  describe "class methods" do
    it "scores a word" do
      expect(ScrabbleGame::Scrabble.score("word")).to eq 8
    end
  end


end
