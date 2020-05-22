function sdk = solveme(sdk)	
  a = 1;
  x = 1:9;
  y = x;
    while a
        bcell = {};
        a = 0;
        for i = 1:9
            rows_values = nonzeros(sdk(i, :)');
            for j = 1:9
                entry = sdk(i, j);
                if entry ~= 0
                    continue
                else
                    columns_data = nonzeros(sdk(:, j));
                    square_index = [ceil(i / 3) ceil(j / 3)] - 1;
                    square_values = nonzeros(sdk(square_index(1) * 3 + [1:3], square_index(2) * 3 + [1:3]));
                    all_values_rowcolblock = [square_values(:); rows_values; columns_data];
                    unq = zeros(1, 9);
                    unq(all_values_rowcolblock) = 1;
                    final_unique = find(~ unq);
                    if isempty(final_unique)
                        sdk = []; return;
                    elseif length(final_unique) == 1
                        a = 1;
                        sdk(i, j) = final_unique;
                        rows_values = nonzeros(sdk(i, :)');
                    else
                        bcell{end + 1} = [i j final_unique];
                    end
                end
            end
         
        end
    end

if isempty(bcell)
  return
end
  
bcellength = cellfun(@length,bcell);
bcell = bcell{find(bcellength == min(bcellength),1)};
m = bcell(1); n = bcell(2);

for test = 3:length(bcell)
  sdk(m,n) = bcell(test);
  D0 = solveme(sdk);
  if ~isempty(D0)
      sdk = D0;
      return
  end
end
sdk = [];