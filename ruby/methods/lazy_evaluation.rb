require 'prime'

n = gets.chomp.to_i
count = 0
i = 1
result = []
while count < n do
    i += 1
    if Prime.prime?(i)
        si = i.to_s
        if si == si.reverse
            count += 1
            result.push(i)
        end
    end
end
p result
