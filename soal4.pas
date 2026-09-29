program penentuanbeasiswa;

var
IPK, penghasilan, prestasi: real;

begin
writeln('penentuan beasiswa');

write('masukkan IPK: ');
readln(IPK);

write('masukkan penghasilan orang tua: Rp');
readln(penghasilan);

write('masukkan jumlah prestasi: ');
readln(prestasi);

writeln;

if IPK < 2.75 then
begin
writeln('IPK tidak memenuhi syarat');
end

else if (IPK >= 3.75) and
(penghasilan <= 5000000) and
(prestasi >= 2) then
begin
writeln('mendapatkan beasiswa penuh');
end

else if (IPK >= 3.50) and
(penghasilan <= 7000000) and
(prestasi >= 1) then
begin
writeln('mendapatkan beasiswa sebagian');
end

else if (IPK >= 3.50) and
(penghasilan > 7000000) then
begin
writeln('penghasilan tidak memenuhi syarat');
end

else
begin
writeln('tidak mendapatkan beasiswa');
end;

end.