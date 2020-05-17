#!/bin/ruby

#
# Complete the timeConversion function below.
#
# Note:
# 12-hour format is different between US and Japan.
# https://ja.wikipedia.org/wiki/午前と午後

def timeConversion(s)
    if s == '12:00:00AM'
        return '00:00:00'
    elsif s == '12:00:00PM'
        return '12:00:00'
    end

    hour = s.to_i
    am_or_pm = s[8..]
    if am_or_pm == 'PM' && hour < 12
        hour += 12
    elsif am_or_pm == 'AM' && hour >= 12
        hour -= 12
    end
    hour_s = hour.to_s
    hour_s = "0" + hour_s if hour_s.size == 1
    hour_s + s[2..7]
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

result = timeConversion s

fp.write result
fp.write "\n"

fp.close()
