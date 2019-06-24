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

# 2. Convert hash to an array: 
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   # => [["c", 300], ["a", 100], ["d", 400]]

# Convert array to hash: Not sure?

# 3. Iterate through a hash: 
h.each { |k,v| puts "#{k} => #{v}" }

#4. What other data structures do arrays support? Queues