sdk = zeros(9);
for i = 1:9
     for j = 1:9
         entry = input(sprintf('Enter number in position [%.0f %.0f]: ', i, j))
         sdk(i, j) = entry;
     end
  end
    disp('Here is the solved Sudoku: ')
    solveme(sdk)

  
