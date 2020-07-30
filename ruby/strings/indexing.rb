def serial_average(str)
    s, x, y = str.split('-')
    z = ((x.to_f+y.to_f)/2.0).round(2)
    "#{s}-#{z.to_s[0...5]}"
end
