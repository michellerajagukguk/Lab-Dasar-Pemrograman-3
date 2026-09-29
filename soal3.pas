program pembeliantiketbioskop;

var
jenisfilm, hari, jumlahtiket: integer;
hargatiket, hargaawal, diskon, totalbayar: real;

begin
writeln('pembelian tiket bioskop');
writeln('jenis film:');
writeln('1. reguler - Rp30.000');
writeln('2. 3D - Rp45.000');
writeln('3. IMAX - Rp65.000');
write('pilih jenis film (1-3): ');
readln(jenisfilm);

case jenisfilm of
1: hargatiket := 30000;
2: hargatiket := 45000;
3: hargatiket := 65000;
else
begin
writeln('jenis film tidak valid. program dihentikan.');
end;
end;

writeln;
writeln('hari:');
writeln('1. Senin-Kamis');
writeln('2. Jumat');
writeln('3. Sabtu-Minggu');
write('pilih hari (1-3): ');
readln(hari);

write('Jumlah tiket: ');
readln(jumlahTiket);

{tambahan harga berdasarkan hari}
if hari = 2 then
hargatiket := hargatiket + 5000
else if hari = 3 then
hargatiket := hargatiket + 10000;

hargaawal := hargatiket * jumlahtiket;

{menentukan diskon}
if hargaawal >= 200000 then
diskon := hargaawal * 10 / 100
else if hargaawal >= 100000 then
diskon := hargaawal * 5 / 100
else
diskon := 0;

totalbayar := hargaawal - diskon;

writeln;
writeln('hasil pembelian');
writeln('harga awal : Rp', hargaAwal:0:0);
writeln('diskon : Rp', diskon:0:0); 
writeln('total bayar : Rp', totalBayar:0:0);

end.