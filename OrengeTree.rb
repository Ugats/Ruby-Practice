# encoding: utf-8

# • OrangeTreeクラスを作ってみなさい。 このクラスには、木の高さを返すheightメソッドと、 メソッドを呼ぶことで、1年分時間を進めるoneYearPassesメソッドがあります。 毎年、この木は成長し大きくなります(オレンジの木が1年に伸びる分だけ)。 そして、ある年限が来たら(これもメソッド呼び出しによります) その木は死んでしまいます。最初の2，3年は実をつけませんが、その後は 実がなる様にします。で、成長した木は若い木よりたくさん実をつけます。 このあたりはあなたが納得するよう調節してみましょう。 そして、もちろんcountTheOranges(木になっているオレンジの数を返す)メソッドと、 pichAnOrange(オレンジをひとつ摘むメソッド。このメソッドで @orangeCountが、1だけ小さくなり、いかにおいしいオレンジだったかを告げる文字列か あるいは、もう木にオレンジがなっていないことを告げる文字列かを返します。)を 実行できるようにしなければいけません。 それと、ある年に取り残したオレンジは次の年には落ちてしまうようにしましょう。
class OrengeTree
  def initialize
    @height = 0
    @lifeSpanHeight = 8
    @year = 0
    @orangeCount = 10
  end

  def height
    @height
  end

  def oneYearPasses
    @height += 1
    @orangeCount = 10
    if @lifeSpanHeight == @height
      die
    end
  end

  def countTheOranges
    @orangeCount
  end

  def pichAnOrange
    if @height < 4
      puts 'まだオレンジはなっていません。'
    else
      if @orangeCount < 1
        puts 'もうオレンジはなっていません。'
      else
        @orangeCount -= 1
        puts 'とてもジューシーなオレンジでした。'
      end
    end
  end

  def die
    puts '残念ですが、寿命のようですね。'
    exit
  end
end

tree = OrengeTree.new
puts tree.height
tree.oneYearPasses
tree.pichAnOrange
puts tree.height
