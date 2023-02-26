module Services
  class PrimeTables
    # (1) Find optimal algorithm
    # (2) Memoize values, so that we don't redo the work when multiple
    # calls are made
    # (3) Save previously compute values to memory and load when
    # instantiating the class.
    def process(n)
      raise ArgumentError unless n

    end

    private

  end
end