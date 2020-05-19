#!/bin/ruby

require 'json'
require 'stringio'

n = gets.to_i

10.times do |i|
    puts "#{n} x #{i+1} = #{n * (i+1)}"
end
