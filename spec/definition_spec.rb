require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

  describe('#explanation') do
    it("returns the explanation of the definition") do
      test_definition = Definition.new("easy to understand")
      expect(test_definition.explanation()).to(eq("easy to understand"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("easy to understand")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved definitions") do
      Definition.new("easy to understand").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

end
