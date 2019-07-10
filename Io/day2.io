# A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. As a bonus, solve the problem with recursion and with loops.

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