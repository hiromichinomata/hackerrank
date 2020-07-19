# Enter your code here.
hackerrank.store(543121, 100)
hackerrank = hackerrank.keep_if{|key, value| key.is_a? Integer}
hackerrank = hackerrank.delete_if{|key, value| key % 2 == 0}
