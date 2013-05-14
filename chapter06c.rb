# encoding: utf-8

# 耳の遠いおばあちゃんのプログラムを書いてみましょう。
bye = ''

puts 'おばあちゃん：「フガフガ...」'
while bye != 'BYEBYEBYE'
  me = gets.chomp
  if me == 'BYE'
  	bye += me
    puts '...'
  elsif me == me.upcase
  	bye = ''
  	year = 1930 + rand(20)
    puts 'いやー、' + year.to_s + '年以来ないねー!'
  else
  	bye = ''
    puts 'おばあちゃん：「は?! もっと大きな声で話しておくれ、坊や!」'
  end
end