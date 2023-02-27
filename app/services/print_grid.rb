module Services
  class PrintGrid

    def initialize
      @grid = nil
    end

    def process(n)
      raise ArgumentError unless n

      m = 0
      incr = 0
      while(m < n)
        primes = Services::Primes.new.process(n+incr)
        m = primes.length
        incr += 1
      end
      @grid = Services::BuildInitialGridLine.new.process(primes)
      primes.each { |prime| append_grid(prime, n, primes) }
      return @grid
    end

    private

    def append_grid(val, n, primes)
      _val = val
      idx = 0
      (n+1).times do
        @grid << spaced_string(val)
        val = _val*primes[idx] if idx < primes.length
        idx += 1
      end
      @grid << "|\n"
    end

    def spaced_string(val)
      val_length = (val).to_s.length
      space_length = (6-val_length)
      str = ''
      space_length.times { str << ' ' }
      str << "#{val} "
      return "|#{str}"
    end
  end
end