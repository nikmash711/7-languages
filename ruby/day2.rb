# FIND: 
# 1. Access files with and without code blocks.

# Without code block: 
file = File.open("text.txt", "w+")
file.puts "Hello World"
file.close

# With code block: 
File.open("text.txt", "w+") { |file|
    file.puts "Hello World"
}

# What is the benefit of the code block? More readable, and easier since there's no .close required

# 2. Convert hash to an array (from docs): 
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   # => [["c", 300], ["a", 100], ["d", 400]]

# Convert array to hash: Not sure?

# 3. Iterate through a hash: 
h.each { |k,v| puts "#{k} => #{v}" }

#4. What other data structures do arrays support? Queues

# DO: 
# 1. Print the contents of an array of sixteen numbers, four numbers at a time, using just each. 
i = 1
(1..16).to_a.each do |x|
  print(x,' ')
  puts if (i % 4) == 0
  i += 1
end

# Now, do the same with each_slice in Enumerable
(1..16).to_a.each_slice(4) { |r| puts r.join(' ') }

# 2. Edit the Tree class so it accepts a hash. No clue?

# 3. Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line

def grep_fn(file, phrase)
  File.open(file) do |f|
    f.each { |line| puts "#{f.lineno}: #{line}" if line[phrase] }
  end
end

grep('foo.txt', 'out')
