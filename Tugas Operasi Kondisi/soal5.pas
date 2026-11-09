program sistempemesananmakanan;

var
kodemakanan, jumlahpesanan, statuspelanggan: integer;
hargamakanan, totalharga, diskon, totalbayar: real;

begin
writeln('sistem pemesanan makanan');

writeln('kode makanan:');
writeln('1. nasi goreng - Rp20.000');
writeln('2. mie goreng - Rp18.000');
writeln('3. ayam geprek - Rp25.000');
writeln('4. steak - Rp50.000');

write('pilih kode makanan (1-4): ');
readln(kodemakanan);

case kodemakanan of
1: hargamakanan := 20000;
2: hargamakanan := 18000;
3: hargamakanan := 25000;
4: hargamakanan := 50000;
else
begin
writeln('kode makanan tidak valid. program dihentikan.');
end;
end;

write('jumlah pesanan: ');
readln(jumlahpesanan);

if jumlahpesanan = 0 then
begin
writeln('jumlah pesanan tidak valid.');
halt;
end;

if jumlahpesanan > 10 then
begin
writeln('pesanan terlalu banyak. program dihentikan.');
hargamakanan := 0;
end;

writeln('status pelanggan:');
writeln('1. member');
writeln('2. non-member');
write('pilih status (1-2): ');
readln(statuspelanggan);

totalharga := hargamakanan * jumlahpesanan;

if statuspelanggan = 1 then
begin
if totalharga >= 100000 then
diskon := totalharga * 15 / 100
else if totalharga >= 50000 then
diskon := totalharga * 10 / 100
else
diskon := totalharga * 5 / 100;
end

else if statuspelanggan = 2 then
begin
if totalharga >= 100000 then
diskon := totalharga * 5 / 100
else
diskon := 0;
end

else
begin
writeln('status pelanggan tidak valid. program dihentikan.');
diskon := 0;
end;

totalbayar := totalharga - diskon;

writeln;
writeln('hasil pemesanan');
writeln('harga makanan : Rp', hargamakanan:0:0);
writeln('total harga : Rp', totalharga:0:0);
writeln('diskon : Rp', diskon:0:0);
writeln('total bayar : Rp', totalbayar:0:0);

end.