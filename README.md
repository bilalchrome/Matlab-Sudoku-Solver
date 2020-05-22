# Matlab-Sudoku-Solver
This matlab function goes through a 9 X 9 matrix and solves it. 
Zeros must be entered in place of empty sudoku entries.

The script asks the user for sudoku by inputting the 9 X 9 matrix entries, then calls the function solveme.

Here is an example of sudoku puzzle you can try to solve: (FUNCTION MUST BE IN SAME DIRECTORY AS SCRIPT)

% Just input the sudoku 

sdk =    [ 0,7,0,8,9,0,0,0,5;
           5,3,0,6,7,4,0,0,0;
           8,0,6,0,0,3,0,0,2;
           0,0,9,0,6,0,1,0,8;
           0,0,0,0,4,0,0,0,0;
           2,0,3,0,1,0,7,0,0;
           9,0,0,7,0,0,2,0,1;
           0,0,0,4,3,5,0,8,7;
           3,0,0,0,2,1,0,4,0 ]  
           
% Then run
solveme(sdk)
