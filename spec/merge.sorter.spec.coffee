MergeSorter = require("../js/merge.sorter")
describe "#MergeSorter", ->
  describe ".constructor", ->
    it "instantiates a new object", ->
      c = new MergeSorter()
      expect(c).toBeDefined()

  describe ".sort", ->
    it "sorts [1]", ->
      c = new MergeSorter()
      result = c.sort [1]
      expect(result[0]).toBe 1
      expect(result.length).toBe 1

    describe "2 integers", ->
      it "sorts [1, 99]", ->
        c = new MergeSorter()
        result = c.sort [1, 99]
        expect(result.length).toBe 2
        expect(result[0]).toBe 1
        expect(result[1]).toBe 99

      it "sorts [99, 1]", ->
        c = new MergeSorter()
        result = c.sort [99, 1]
        expect(result.length).toBe 2
        expect(result[0]).toBe 1
        expect(result[1]).toBe 99

      it "sorts [99, 99]", ->
        c = new MergeSorter()
        result = c.sort [99, 99]
        expect(result.length).toBe 2
        expect(result[0]).toBe 99
        expect(result[1]).toBe 99

    describe "3 integers", ->
      it " sorts 1, 2, 3", ->
        c = new MergeSorter()
        result = c.sort [1, 2, 3]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 1, 3, 2", ->
        c = new MergeSorter()
        result = c.sort [1, 3, 2]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 2, 1, 3", ->
        c = new MergeSorter()
        result = c.sort [2, 1, 3]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 2, 3, 1", ->
        c = new MergeSorter()
        result = c.sort [2, 3, 1]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 3, 1, 2", ->
        c = new MergeSorter()
        result = c.sort [3, 1, 2]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 3, 2, 1", ->
        c = new MergeSorter()
        result = c.sort [3, 2, 1]
        expect(result.length).toBe 3
        expect(result[0]).toBe 1
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 2, 2, 2", ->
        c = new MergeSorter()
        result = c.sort [2, 2, 2]
        expect(result.length).toBe 3
        expect(result[0]).toBe 2
        expect(result[1]).toBe 2
        expect(result[2]).toBe 2

      it " sorts 3, 2, 2", ->
        c = new MergeSorter()
        result = c.sort [3, 2, 2]
        expect(result.length).toBe 3
        expect(result[0]).toBe 2
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 2, 2, 3", ->
        c = new MergeSorter()
        result = c.sort [2, 2, 3]
        expect(result.length).toBe 3
        expect(result[0]).toBe 2
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3

      it " sorts 2, 3, 2", ->
        c = new MergeSorter()
        result = c.sort [2, 3, 2]
        expect(result.length).toBe 3
        expect(result[0]).toBe 2
        expect(result[1]).toBe 2
        expect(result[2]).toBe 3


