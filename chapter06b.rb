# encoding: utf-8

# 耳の遠いおばあちゃんのプログラムを書いてみましょう。
is_BYE = false

puts 'おばあちゃん：「フガフガ...」'
while is_BYE == false
  me = gets.chomp
  if me == 'BYE'
    is_BYE = true
    puts '...フガフガ'
  elsif me == me.upcase
    year = 1930 + rand(20)
    puts 'いやー、' + year.to_s + '年以来ないねー!'
  else
    puts 'おばあちゃん：「は?! もっと大きな声で話しておくれ、坊や!」'
  end
end