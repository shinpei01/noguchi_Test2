# 課題１
# 下記の条件式と等価になる条件文を||を使って書きなさい
# ヒント：ド・モルガンの法則を理解すること
# P = true
# Q = true
# puts !(P && Q)
# puts  !P || !Q

# 課題2
# 下記の処理は実行時に例外が発生します
# 例外をキャッチしプログラムの不正終了を避けてエラーが発生した事をputsで表示しなさい
# num = 100
# num.include?("aaa")

# um = 100
# begin
#   num.include?("aaa")
# rescue NoMethodError
#   puts "問題が発生しました"
# end


# 課題3
# 下記のループ文と同じ処理をブロックを用いて記述してください
# nums = [10, 20 ,30]
# nums.each do |num|
#   puts num
# end
nums = [10,20,30]
def nums_printing
  yield
end

nums_printing do
  nums.each{|val| puts val}
end


# 課題4
# 上記のループ文と同じ処理をするProcオブジェクトを定義してコールしなさい
# Procオブジェクトの引数にはnums配列が渡されるものとします

nums = [10, 20 ,30]
prop = Proc.new{|i|
  i.each{ |val| puts val }
}

prop.call nums


# 課題5
# 課題3,4が解けたら下記の文章をそれぞれ３周読み、写経して下さい
# http://qiita.com/kidachi_/items/15cfee9ec66804c3afd2
# http://qiita.com/ryo-ma/items/24c46592b45775e8644d
