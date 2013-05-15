# encoding: utf-8
arr = []
is_Enter = false

puts '好きな英単語を入力してください（いくつでも）'
while is_Enter == false
	word = gets.chomp
	if word == ''
		is_Enter = true
	else
		arr << word
	end
end

sort_arr = arr.sort
sort_arr.each do |word|
	puts word
end