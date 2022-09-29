def foo(n)
  if n <= 10
    p "n < 10"
  else
    p "n >= 10"
  end
end

eval <<~RUBY, nil, __FILE__, __LINE__ + 1
def bar(n)
  if n <= 10
    p "n < 10"
  else
    p "n >= 10" # テストされていない
  end
end
RUBY

foo(1)
foo(2)
bar(1)
bar(2)
