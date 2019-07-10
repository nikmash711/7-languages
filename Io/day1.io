Answer:

1) Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.

Strongly typed, it doesnt convert it 

2) Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
Io> true and 0
==> true
Io> true and ""
==> true
Io> true and nil
==> false

3) How can you tell what slots a prototype  upports?
By using the slotNames method on Object

4) What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
= used for assignments to existing slots (raises exception if the slot doesnt exist) 
:= used to assign a value to an existing slot, or create the slot if it doesnt exist
::= does the same as :=, but will also create a setter for the slot

Do: 
1) Execute a file -- can do that by calling io day1.io

1) Execute the code in a slot given its name.
HelloWorld := Object clone 
HelloWorld foo := method("Foo foo" println)
 
HelloWorld getSlot(System args at(1)) call