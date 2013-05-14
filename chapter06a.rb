# encoding: utf-8

# "99本のビールが壁に..." 遠足などでよく歌われる古典的な童謡の歌詞、"99 Bottles of Beer on the Wall" を 出力するプログラムを書いてみましょう。
number_of_bottles = 99

while number_of_bottles >= 0
  puts number_of_bottles.to_s + 'Bottles of beer on the wall'
  puts number_of_bottles.to_s + 'Bottles of beer'
  puts 'Take one down and pass it around'
  number_of_bottles -= 1
end