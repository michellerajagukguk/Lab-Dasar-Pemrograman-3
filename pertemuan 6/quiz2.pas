program bilanganprima;
uses crt;

var
  angka: integer;

function cekprima(n: integer): boolean;
var
  i: integer;
begin
  if n < 2 then
    cekprima := false
  else
  begin
    cekprima := true;

    for i := 2 to n div 2 do
    begin
      if n mod i = 0 then
        cekprima := false;
    end;
  end;
end;

begin
  clrscr;

  write('Masukkan angka: ');
  readln(angka);

  if cekprima(angka) then
    writeln('Bilangan Prima')
  else
    writeln('Non-Prima');

  readln;
end.