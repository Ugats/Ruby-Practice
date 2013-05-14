# encoding: utf-8

puts '姓を入力してください'
last = gets.chomp
puts '名を入力してください'
first = gets.chomp
puts 'Howdy, ' + last + ' ' + first + '!!'

puts '好きな数字は？'
number = gets.chomp
plus1 = number.to_i + 1
puts plus1.to_s + '本の斧をあげましょう！'