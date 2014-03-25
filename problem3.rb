# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# def largest_prime_factors(int)
#   odd_factors = []

#   2.upto(int-1) do |i|
#     odd_factors.push(i) if int % i == 0 && i.odd? || int % i == 0 && i == 2
#   end

#   notprime = []

#   odd_factors.each do |f|
#     2.upto(f-1) do |n|
#       if f % n == 0
#         notprime.push(f)
#       end
#     end
#   end

#   odd_factors.reject{|f| notprime.include?(f) }.last

# end

# p largest_prime_factors(999)



def largest_prime_factors(int)
  factors = []

  possibles = (2..int-1).to_a.select { |i| i.odd? || i == 2 }

  possibles.each do |n|
    factors.push(n) if int % n == 0
  end

  print "we are now at the possibles"

  match = nil

  factors.reverse.each_with_index do |n, i|
    print "this is index ##{i} factor #{n}"
    2.upto(n-1) do |num|
      if n % num == 0
        match = n
        break
      end
    end
    if match.nil?
      return n
    elsif match
      match = nil
    end
  end

end


p largest_prime_factors(600851475143)

