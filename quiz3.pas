program fibonacci;
uses crt;

var
  n: integer;

procedure deretfibonacci(n: integer);
var
  a, b, c, i: integer;
begin
  a := 1;
  b := 1;

  for i := 1 to n do
  begin
    write(a, ' ');
    c := a + b;
    a := b;
    b := c;
  end;
end;

begin
  clrscr;

  write('Masukkan jumlah suku: ');
  readln(n);

  write('Deret Fibonacci: ');
  deretfibonacci(n);

  readln;
end.