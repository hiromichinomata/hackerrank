# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.chomp.to_i
n.times do
    s = gets.chomp
    s_even = ""
    s_odd = ""
    s.size.times do |i|
        s_even += s[i] if i.even?
        s_odd += s[i] if i.odd?
    end
    puts s_even + " " + s_odd
end
