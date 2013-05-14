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
    puts 'いやー、1938年以来ないねー!'
  else
    puts 'おばあちゃん：「は?! もっと大きな声で話しておくれ、坊や!」'
  end
end