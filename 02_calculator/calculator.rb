#write your code here
def add(a, b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(arr)

  if arr.size < 1
    return 0
  end

  return arr.inject do |acc, elem|
    acc = acc + elem
  end
end

def multiply(a, b, *z)

  if z.size > 0
    resultat = 0

    resultat = z.inject do |acc = 1, elem|
      acc = acc * elem
    end

    resultat = resultat * a * b
  else
    resultat = a * b
  end

  return resultat
end

def power(a, b)

  result = a ** b
  return result

end

def factorial(x)

  if x === 0
    resultat = 1
  else
    resultat = 1
    1.upto(x) do |val|
      resultat = resultat * val
    end
  end

  return resultat
  
end
