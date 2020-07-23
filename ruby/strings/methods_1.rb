def process_text(arr)
    arr.map{|s| s.strip.chomp}.join(' ')
end
