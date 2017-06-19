#write your code here
def add(num1, num2)
  result = num1 + num2
end

def subtract(num1, num2)
  result = num1 - num2
end

def sum(array)
  result = 0.0
  if array.length == 0 then
    result = 0
  else
    array.each do |num|
      result += num
    end
  end
  return result
end
