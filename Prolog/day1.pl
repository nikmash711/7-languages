# 1. Make a simple knowledge base. Represent some of your favorite books and authors.

book(harry_potter, jk_rowling).
book(fantastic_beasts, jk_rowling).
book(twilight, stephanie_myers).
book(eclipse, stephanie_myers)
book(goosebumps, rl_stine).

# 2. Find all books in your knowledge base written by one author.
# ?- book(What, jk_rowling).

# 3. Make a knowledge base representing musicians and instruments. Also represent musicians and their genre of music.
musician_instrument(george, guitar).
musician_instrument(nikkie, piano).
musician_instrument(jonathan, piano)
musician_instrument(ethan, clarinet).

musician_genre(jonathan, jazz).
musician_genre(nikkie, contemporary).

# 4. Find all musicians who play the guitar.
# ?- musician_instrument(Who, guitar)