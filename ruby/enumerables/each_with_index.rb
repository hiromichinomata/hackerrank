def skip_animals(animals, skip)
  # Your code here
    result = []
    animals.each_with_index do |item, index|
        next if index < skip
        result.append("#{index}:#{item}")
    end
    result
end
