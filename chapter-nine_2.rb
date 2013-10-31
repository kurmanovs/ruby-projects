=begin
Seitek Kurmanov
Old-school Roman numerals.​
In the early days of Roman numerals, the Romans didn’t
bother with any of this new-fangled subtraction
“IX” nonsense.  No sir, it was straight addition,
biggest to littlest—so 9 was written “VIIII,”
and so on.  Write a method that when passed an integer between 1 and 3000 (or so)
returns a string containing the proper old-school
Roman numeral.  In other words, ​old_roman_numeral 4​ should return'IIII'.
Make sure to test your method on a bunch of different
numbers. 
=end
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000

def convertToRoman number
  ms = 0
  ds = 0
  cs = 0
  ls = 0
  xs = 0
  vs = 0

  while number != 0
    case
    when number >= M
      ms = number / M
      number = number % M
    when number >= D && number < M
      ds = 1
      number = number % D
    when number >= C && number < D
      cs = number / C
      number = number % C
    when number >= L && number < C
      ls = number / L
      number = number % L
    when number >= X && number < L
      xs = number / X
      number = number % X
    when number >= V && number < X
      vs = number / V
      number = number % V
    when number >= I && number < V
      is = number
      number = 0
    end
  end

return 'M'*ms+'D'*ds+'C'*cs+'L'*ls+'X'*xs+'V'*vs+'I'*is.to_i
end

#Testing
number = 1
while number!=5001
  puts convertToRoman number
  number = number+1
end