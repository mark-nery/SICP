# select solutions in ruby

#1.11

#recursive version
def f(n)
  return n if n < 3
  f(n - 1) + (2 * f(n - 2)) + (3 * f(n - 3))
end

#iterative version
def f_iter(n, a = 2,b = 1 ,c = 0)
  return a if n < 3
  f_iter(n - 1, a + 2 * b + 3 * c, a , b)
end

#1.12

def pascal(n,r)
  return 1 if n.zero? || r.zero?
  return 1 if n == r
  pascal(n - 1, r - 1) + pascal(n - 1 , r)
end
