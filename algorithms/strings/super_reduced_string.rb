#!/bin/ruby

require 'json'
require 'stringio'

# Complete the superReducedString function below.
def calc(s)
    if s.to_s == ""
        return ""
    end
    if s.size == 1
        return s
    end
    if s[0] == s[1]
        calc(s[2..-1])
    else
        result = s[0] + calc(s[1..-1])
        if result[0] == result[1]
            calc(result)
        else
            result
        end
    end
end

def superReducedString(s)
    result = calc(s)
    if result == ""
        "Empty String"
    else
        result
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = superReducedString s

fptr.write result
fptr.write "\n"

fptr.close()
