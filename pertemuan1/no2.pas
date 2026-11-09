program awalan;
uses crt;

var 
a,b,hasil: integer;

begin
clrscr;
  write ('masukkan bilangan pertama: ');
  read (a);
  write ('masukkan bilangan kedua: ');
  read (b);
  
  hasil:=a+b;
  
  write ('hasil penjumlahan adalah: ', hasil);
  readln;
  
end.