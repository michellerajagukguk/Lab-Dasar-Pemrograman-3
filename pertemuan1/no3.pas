program awalan;
uses crt;

var 
p,l,luas: integer;

begin
clrscr;
  write ('masukkan panjang: ');
  read (p);
  write ('masukkan lebar: ');
  read (l);
  
  luas:=p*l;
  
  write ('luas persegi panjang adalah: ', luas);
  readln;
  
  
end.