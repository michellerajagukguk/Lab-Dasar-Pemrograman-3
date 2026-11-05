program faktorialrekursif;
uses crt;

var
  n: integer;

function faktorial(n: integer): longint;
begin
  if n = 0 then
    faktorial := 1
  else
    faktorial := n * faktorial(n - 1);
end;

begin
  clrscr;

  write('Masukkan nilai: ');
  readln(n);

  writeln('Hasil faktorial: ', faktorial(n));

  readln;
end.