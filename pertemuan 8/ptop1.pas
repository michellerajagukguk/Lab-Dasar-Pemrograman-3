program ptop1;
uses crt;

var 
angka : integer;
p : ^integer;
pp : ^PInteger;

begin

angka := 7;
p := @angka; // alamat dr var angka
pp := @p;
writeln('angkanya : ', angka);
writeln('pointer 1 : ', p^); //ambil nilai dr var angka
writeln('pointer to another pointer : ', pp^^); //ke pointer 1
end.