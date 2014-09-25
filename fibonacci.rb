# rdoc
#  Studio Umiの課題プログラム
#  課題：『フィボナッチ数列の 30 番目、 40 番目、 50 番目を返すプログラムを書いてください。』

# Fibonacciクラス
# そのときの数をn0として保持する．
class Fibonacci
  # initialize
  # n0, n1を初期化する．
  def initialize
    @n0 = 0
    @n1 = 1
  end
  # nextメソッド
  # フィボナッチの漸化式通りに計算を行う．
  # 返り値はn0(現在の数)
  def next
    @n0, @n1 = @n1, @n0 + @n1
    @n0
  end
end

# mainルーチン
fibonacci = Fibonacci.new

# timesは0から数え上げていくので，51までカウント
51.times do |count|
  i = fibonacci.next
  case count
  when 29, 39, 49 then # 0から数え上げるので30番目は29、40番目・50番目も同様．
    puts (count + 1).to_s + ':' + i.to_s
    # => 29:832040, 39:102334155, 49:12586269025
  end
end
