def rot13(secret_messages)
    from = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    to = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"

    secret_messages.map do |message|
        words = message.split(" ")
        converted_words = words.map do |word|
            res = ''
            word.split("").each do |str|
                i = from.index(str)
                res += to[i]
            end
            res
        end
        converted_words.join(" ")
    end
end
