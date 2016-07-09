# coding: utf-8

require_relative 'clothes_item.rb'

puts 'Сколько сейчас градусов?'
temperature = STDIN.gets.chomp.gsub(/[^-^0-9]/, '')

clothes_item = ClothesItem.new

titles = []
ranges = []
сhoose_clothes = []


Dir.glob('data/*.txt').each do |file_path|
  clothes_item.check_file(file_path)
  titles << clothes_item.title
  ranges << clothes_item.in_range?(temperature) 
end

ranges.each_with_index do |variant, i|
  if variant == true
    сhoose_clothes << titles[i]
  end
end

puts ranges

puts сhoose_clothes.join(', ')