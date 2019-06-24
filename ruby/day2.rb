# Find out how to access files with and without code blocks. What is the benefit of the code block?

# Without code block: 
file = File.open("text.txt", "w+")
file.puts "Hello World"
file.close

# With code block: 
File.open("text.txt", "w+") { |file|
    file.puts "Hello World"
}

# With code block is more readable, and easier since there's no .close required