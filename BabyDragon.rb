# encoding: utf-8

# • 赤ちゃんドラゴンと会話が出来るようなプログラムを書いてみましょう。 feedやwalkのようなコマンドを入力できるようにして ドラゴンに対してそれらのメソッドが呼ばれるようにします。 もちろん、入力されたものは文字列なので、ある種のメソッドに転送する処理 をしなくてはならないでしょう。つまり、何の文字が入力されたかをチェックして適切な メソッドを呼び出すという処理です。

class BabyDragon
  
  def initialize name
    @name   = name

    @asleep = false
    @stuffInBelly = 0
    @sleepiness = 0

    puts '赤ちゃんが卵から孵りました。'
    passageOfTime
  end

  def passageOfTime
    puts '...しばらく時間が経ちました。'
    puts '唸り声を出して何かを要求しています。どうしますか？'
    @status = rand(3)
    puts @status
    command = gets.chomp
    method(command).call
    # 0: 遊びたい
    if @status == 0 and command == 'play'
      puts '喜んでいます！'
      passageOfTime
    else
      puts '唸っています。違うようです。どうしますか？'
      command = gets.chomp
      method(command).call
    end

    if @status == 1 and command == 'feed'
      puts '喜んでいます！'
      passageOfTime
    else
      puts '唸っています。違うようです。どうしますか？'
      command = gets.chomp
      method(command).call
    end

    if @status == 2 and command == 'sing'
      puts '喜んでいます！'
      passageOfTime
    else
      puts '唸っています。違うようです。どうしますか？'
      command = gets.chomp
      method(command).call
    end

  end

  def play
    puts '高い、高ーい'
  end

  def feed
    puts 'ご飯をあげます'
  end

  def sing
    puts '歌を歌います'
  end

  def kill
    puts '逆に...'
    exit
  end

end


puts '赤ちゃんドラゴンに名前をつけてください。'

baby = BabyDragon.new gets.chomp

