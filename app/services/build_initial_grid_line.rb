module Services
  class BuildInitialGridLine

    CELL_SIZE = 6
    def process(primes)
      raise ArgumentError unless primes && primes.class == Array
      grid = "|       "
      primes.each { |prime| grid << spaced_string(prime) }
      grid << "|\n"
      return grid
    end

    private

    def spaced_string(val)
      val_length = (val).to_s.length
      space_length = (CELL_SIZE-val_length)
      str = ''
      space_length.times { str << ' ' }
      str << "#{val} "
      return "|#{str}"
    end
  end
end