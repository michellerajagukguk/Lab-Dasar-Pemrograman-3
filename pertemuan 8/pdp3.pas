program pointer1;
uses crt;

var 
angka : integer;
pAngka : ^integer; //caret di depan nunjukin kalau variabel itu merupakan pointer

begin
angka := 10;

pAngka := @angka; // ambil alamat dr var angka

writeln('nilai angkanya : ', angka);
writeln('nilai pointernya : ', pAngka^); //ambil isi dr alamat yg dituju dr pointer

end.