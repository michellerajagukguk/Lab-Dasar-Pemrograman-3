program perkalian;

var 
i: integer;

begin
for i := 1 to 100 do
begin
    if (i mod 3 <> 0) then
    begin
        writeln(i, ' x 3 = ', i * 3);
    end;
end;
readln;
end.