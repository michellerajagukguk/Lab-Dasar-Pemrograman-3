program aksesalamat;
uses crt;

var
angka : integer;
i : ^word;
ptrangka :^integer;

begin
clrscr;

angka := 10;
writeln('angkanya : ', angka);

ptrangka := @angka; // ambil alamat
writeln(ptrangka^); // ambil isi dr alamat yg dituju

i := addr(ptrangka);
writeln('alamat memorinya : ', i^);


end.