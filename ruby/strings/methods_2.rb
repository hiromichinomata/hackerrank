def mask_article(str, arr)
    arr.each do |word|
        str = str.gsub(word, strike(word))
    end
    str
end

def strike(str)
    '<strike>' + str + '</strike>'
end
