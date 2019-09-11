# SUDOKU 4x4 PUZZLE: 
sudoku(Puzzle, Solution) :-
  Solution = Puzzle,
  
  Puzzle = [S11, S12, S13, S14,
            S21, S22, S23, S24,
            S31, S32, S33, S34,
            S41, S42, S43, S44],
  
  fd_domain(Solution, 1, 4),
  
  Row1 = [S11, S12, S13, S14],
  Row2 = [S21, S22, S23, S24],
  Row3 = [S31, S32, S33, S34],
  Row4 = [S41, S42, S43, S44],      
  
  Col1 = [S11, S21, S31, S41],
  Col2 = [S12, S22, S32, S42],
  Col3 = [S13, S23, S33, S43],
  Col4 = [S14, S24, S34, S44],      
  
  Square1 = [S11, S12, S21, S22],
  Square2 = [S13, S14, S23, S24],
  Square3 = [S31, S32, S41, S42],
  Square4 = [S33, S34, S43, S44],      
  
  valid([Row1, Row2, Row3, Row4,
         Col1, Col2, Col3, Col4,
         Square1, Square2, Square3, Square4]).
 
valid([]).
valid([Head | Tail]) :- fd_all_different(Head), valid(Tail).

# How you run it:
| ?- sudoku([_, _, 2, 3,
             _, _, _, _,
             _, _, _, _,
             3, 4, _, _],
             Solution).
 
 
S = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2]

# We break the 4x4 puzzle down into individual elements, rows,columns, and squares. After that, we just apply some constraints to them: all elements must have a value between 1 and 4 (fd_domain) and the values in each row, column, and square must be different (fd_all_different).

# SUDOKO 6x6 PUZZLE: 
sudoku6(Puzzle, Solution) :-
  Solution = Puzzle,
  
  Puzzle = [S11, S12, S13, S14, S15, S16,
            S21, S22, S23, S24, S25, S26,
            S31, S32, S33, S34, S35, S36,
            S41, S42, S43, S44, S45, S46,
            S51, S52, S53, S54, S55, S56, 
            S61, S62, S63, S64, S65, S66],
  
  fd_domain(Solution, 1, 6),
  
  Row1 = [S11, S12, S13, S14, S15, S16],
  Row2 = [S21, S22, S23, S24, S25, S26],
  Row3 = [S31, S32, S33, S34, S35, S36],
  Row4 = [S41, S42, S43, S44, S45, S46],      
  Row5 = [S51, S52, S53, S54, S55, S56],
  Row6 = [S61, S62, S63, S64, S65, S66],
  
  Col1 = [S11, S21, S31, S41, S51, S61],
  Col2 = [S12, S22, S32, S42, S52, S62],
  Col3 = [S13, S23, S33, S43, S53, S63],
  Col4 = [S14, S24, S34, S44, S54, S64],      
  Col5 = [S15, S25, S35, S45, S55, S65],      
  Col6 = [S16, S26, S36, S46, S56, S66],          
  
  Square1 = [S11, S12, S13, S21, S22, S23],
  Square2 = [S14, S15, S16, S24, S25, S26],
  Square3 = [S31, S32, S33, S41, S42, S43],
  Square4 = [S34, S35, S36, S44, S45, S46],
  Square5 = [S51, S52, S53, S61, S62, S63],
  Square6 = [S54, S55, S56, S64, S65, S66],
  
  valid([Row1, Row2, Row3, Row4, Row5, Row6, 
         Col1, Col2, Col3, Col4, Col5, Col6,
         Square1, Square2, Square3, Square4, Square5, Square6]),
  
  pretty_print([Row1, Row2, Row3, Row4, Row5, Row6]).
 
valid([]).
valid([Head | Tail]) :- fd_all_different(Head), valid(Tail).
  
pretty_print([Head | Tail]) :-
 print(Head),
 print('\n'),
 pretty_print(Tail).

# The output: 
| ?- sudoku6([1, _, _, _, _, _,
              _, 5, _, 2, _, _,
              _, 1, 6, _, 5, _, 
              _, 3, _, 6, 2, _, 
              _, _, 1, _, 3, _, 
              _, _, _, _, _, 5],
              Solution).
 
[1,2,3,5,4,6]
[6,5,4,2,1,3]
[2,1,6,3,5,4]
[4,3,5,6,2,1]
[5,6,1,4,3,2]
[3,4,2,1,6,5]