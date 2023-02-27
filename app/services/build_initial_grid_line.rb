module Services
  class BuildInitialGridLine
    def process(primes)
      raise ArgumentError unless primes && primes.class == Array
      grid = "|       "
      primes.each { |prime| grid << Services::SpacedString.new.process(prime) }
      grid << "|\n"
      return grid
    end
  end
end
