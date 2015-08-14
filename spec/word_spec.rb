require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new("simple")
      expect(test_word.name()).to(eq("simple"))
    end
  end

  describe('#meanings') do
    it("initially returns an empty array of meanings for the word") do
      test_word = Word.new("simple")
      expect(test_word.meanings()).to(eq([]))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a word to the array of saved words") do
      test_word = Word.new("simple")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved words") do
      Word.new("simple").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it("adds a new definition to a word") do
      test_word = Word.new("simple")
      test_definition = Definition.new("easy to understand")
      test_word.add_definition(test_definition)
      expect(test_word.meanings()).to(eq([test_definition]))
    end
  end
end
