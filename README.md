# README

* Ruby version
  * `ruby 2.5.9p229 (2021-04-05 revision 67939) [x86_64-darwin16]`

* Configuration
  * Add to `config/application.rb`
   * `config.autoload_paths << Rails.root.join('app')`

* Database creation
  * `rake db:create`

* Database initialization
  * `rake db:schema:load`

* How to run the test suite
  * `bundle exec rspec spec/services`

* How to run the service from the console
  * `p Services::Primes.new.process(50)`
    `
    => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
    `
  * `puts Services::PrintGrid.new.process(4)`
    `
    |       |     2 |     3 |     5 |     7 |
    |     2 |     4 |     6 |    10 |    14 |
    |     3 |     6 |     9 |    15 |    21 |
    |     5 |    10 |    15 |    25 |    35 |
    |     7 |    14 |    21 |    35 |    49 |
    `
* What I'm pleased with
  * The modular approach the code was built

* What would I do if I had more time?
  * Implement memoization/caching for prime calculation and grid building
  * Algorithmic improvements
  * Edge case improvements in grid

* Overall thought process
    * (0) Find optimal algorithm
      * Sqrt method
       T(n) = O(√ n)
       S(n) = S(n)
      * Recursion
      T(n) = O(n)
      S(n) = S(n)
      * Fermat's Theorem
      T(n) = O(n)
      S(n) = S(n)
      Interesting case here.  If the problem was to strictly find the
      the prime number, then we could find the solution in O(1) using
      this algorithm, but since we are concerned with the grid of numbers
      up to n, this doesn't help us much.
      * Sieve of Eratosthenes
      T(n) = O(n*log(log(n)))
      S(n) = O(n)
    * (1) Implement algorithm
    * (2) Print (n+1)X(n+1) grid of numbers
    * (3) Memoize values, so that we don't redo the work when multiple
    * calls are made
    * (4) Save previously compute values to memory and load when
    * instantiating the class.
