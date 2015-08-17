require('rspec')
require('definition')

describe('Definition') do
  # before() do
  #   Definition.clear()
  # end

  describe('#explanation') do
    it("returns the explanation of the definition") do
      test_definition = Definition.new("easy to understand")
      expect(test_definition.explanation()).to(eq("easy to understand"))
    end
  end

  # describe('.all') do
  #   it("is empty at first") do
  #     expect(Definition.all()).to(eq([]))
  #   end
  # end

  # describe('#save') do
  #   it("adds a definition to the array of saved definitions") do
  #     test_definition = Definition.new("easy to understand")
  #     test_definition.save()
  #     expect(Definition.all()).to(eq([test_definition]))
  #   end
  # end

  # describe('.clear') do
  #   it("empties out all of the saved definitions") do
  #     Definition.new("easy to understand").save()
  #     Definition.clear()
  #     expect(Definition.all()).to(eq([]))
  #   end
  # end

  # describe('.#id') do
  #   it("returns the id of the definition") do
  #     test_definition = Definition.new("easy to understand")
  #     test_definition.save()
  #     expect(test_definition.id()).to(eq(1))
  #   end
  # end

  # describe('.find') do
  #   it("returns a definition by its id number") do
  #     test_definition = Definition.new("easy to understand")
  #     test_definition.save()
  #     test_definition2 = Definition.new("not elaborate")
  #     test_definition2.save()
  #     expect(Definition.find(test_definition.id())).to(eq(test_definition))
  #   end
  # end

end
