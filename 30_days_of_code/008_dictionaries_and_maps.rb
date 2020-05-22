# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.chomp.to_i
tels = {}
n.times do |i|
    name, phone = gets.chomp.split
    tels[name.to_s] = phone
end

# n != num of queries
while true
    name = gets&.chomp.to_s
    break if name == ""
    if tels.has_key?(name.to_s)
        puts "#{name}=#{tels[name]}"
    else
        puts "Not found"
    end
end
