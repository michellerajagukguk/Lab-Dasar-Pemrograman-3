program baris;
uses crt;

var 
i, j : integer;

begin
clrscr;

write('masukkan jumlah baris : ');

for i := 5 downto 1 do 
begin
    for j := 1 to i do
    begin
        write('*');
    end;
    writeln;
end;
readln;

end.
