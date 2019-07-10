# 1. A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. As a bonus, solve the problem with recursion and with loops.

recursiveFib := method(n,
  if (n == 1 or n == 2) then (return(1)) else (return(recursiveFib(n - 1) + recursiveFib(n - 2)))
)

loopFib := method(n,
  if( n < 2, 1,
    n_1 := 1
    n_2 := 1
    sum := 2
    for(i, 2, n,
      sum = n_1 + n_2
      n_2 = n_1
      n_1 = sum
    )
    sum
  )
)

# 2. How would you change / to return 0 if the denominator is zero?

old := Number getSlot("/")
Number / = method(denom,
  if (denom == 0) then (return(0)) else (return(old(denom)))
)

# 3. Write a program to add up all of the numbers in a two-dimensional array.

# 4. Add a slot called myAverage to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)

myList := list(1, 2, 3)
myList myAverage := method(
  if (detect(element, element isKindOf(Number) not)) then (
    Exception raise("Numbers only please!")
  ) else (
    return(sum / size)
  )
)