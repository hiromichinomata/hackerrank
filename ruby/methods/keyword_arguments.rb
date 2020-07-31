def convert_temp(num, **options)
    input_scale = options[:input_scale]
    output_scale = options[:output_scale]
    return num if input_scale == output_scale
    if input_scale == 'celsuis'
        if output_scale == 'kelvin'
            num + 273.15
        else
            num * 9 / 5.0 + 32
        end
    elsif input_scale == 'kelvin'
        if output_scale == 'celsius'
            num - 273.15
        else
            (num - 273.15) * 9/5.0 + 32
        end
    else
        if output_scale == 'kelvin'
            (num - 32) * 5 / 9.0 + 273.15
        else
            (num - 32) * 5 / 9.0
        end
    end
end
