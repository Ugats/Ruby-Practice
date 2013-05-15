# encoding: utf-8
arr = Hash.new
atoz = ('a'..'z').to_a
atoz.each do |key|
  arr[key] = ''
end

is_Enter = false

puts '好きな英単語を入力してください（いくつでも）'
while is_Enter == false
  word = gets.chomp
  if word == ''
      is_Enter = true
  else
      arr[word[0]] << word
  end
end

arr.each_value {|value|
  if value != ''
    puts value
  end
}
