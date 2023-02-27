module Services
  class PrintGrid

    def initialize
      @grid = nil
    end

    def process(_n)
      raise ArgumentError unless _n

      m = 0
      incr = 0
      while(m < _n)
        primes = Services::Primes.new.process(_n+incr)
        m = primes.length
        incr += 1
      end
      @grid = start_grid(primes)
      # byebug
      primes.each {|prime| append_grid(prime, _n) }
      return @grid
    end

    private

    def start_grid(primes)
      grid = "|       "
      primes.each {|prime| grid << "|     #{prime} " }
      grid << "|\n"
      return grid
    end

    def append_grid(val, _n)
      _val = val
      (_n+1).times do
        @grid << "|     #{val} "
        val += _val
      end
      @grid << "|\n"
      # byebug
    end
  end
end