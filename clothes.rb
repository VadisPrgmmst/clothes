# coding: utf-8

def in_interval(temperature, arr)
  arr_for_interval = arr[2].gsub(/[() ]/, '').split(',')
  int1 = arr_for_interval[0].to_i
  int2 = arr_for_interval[1].to_i
  temperature.between? int1, int2
end

arrs_from_file = []
Dir["#{File.dirname(__FILE__)}/data/*.txt"].each do |path|
  arrs_from_file << File.readlines(path).each{ |i| i.chomp! }
end

puts 'Какая сегодня температура?'
temperature = STDIN.gets.chomp.to_i

title = []
types = []

arrs_from_file.each do |arr|
  types << arr[1] if in_interval(temperature, arr)
end

p types

