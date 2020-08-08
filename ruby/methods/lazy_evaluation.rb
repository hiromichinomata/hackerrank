require 'prime'

n = gets.chomp.to_i
result = Prime.each.lazy.filter{ |i|
  s_i = i.to_s
  s_i == s_i.reverse
}.first(n)
p result