# 自分の解答
def fizz_buzz(n) 
  if n % 15 == 0
    puts 'Fizz Buzz'
  elsif n % 3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  else
    puts n.to_s
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)

#チェリー本の解答
#上記自分の解答と同じ
