# encoding: utf-8

puts '開始の年は？'
start_y = gets.chomp

puts '終了の年は？'
end_y = gets.chomp

year = start_y.to_i
while year <= end_y.to_i
	if year % 4 == 0 and year % 100 != 0
		puts year
	elsif year % 400 == 0
		puts year
	end
	year += 1 
end