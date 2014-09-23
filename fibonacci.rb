class Fibonacci
    def initialize
        @n0 = 0
        @n1 = 1
    end
    def next
        @n0, @n1 = @n1, @n0 + @n1
        return @n0
    end
end

fibonacci = Fibonacci.new

#timesは0から数え上げていくので，51までカウント
51.times do |count|
    i = fibonacci.next()
    case count
    when 29, 39, 49 then #0から数え上げるので30番目は29、40番目・50番目も同様．
    puts count.to_s + ":" + i.to_s #=> 29:832040, 39:102334155, 49:12586269025
    end
end