module Services
  class PrintGrid
    def process(n)
      raise ArgumentError unless n

      m = 0
      incr = 0
      while(m < n)
        primes = Services::Primes.new.process(n+incr)
        m = primes.length
        incr += 1
      end
      grid = Services::BuildInitialGridLine.new.process(primes)
      primes.each do |prime|
        Services::BuildMultiplicationTable.new.process(
          prime, n, primes, grid
        )
      end
      return grid
    end
  end
end
