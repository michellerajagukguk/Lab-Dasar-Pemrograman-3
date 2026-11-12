program HasilStudi;
uses crt;

var
  nama, nim: array[1..100] of string;
  mk: array[1..100,1..20] of string;
  nilai: array[1..100,1..20] of string;
  sks, jmlMK: array[1..100,1..20] of integer;
  totalSKS: array[1..100] of integer;
  ips, mutu: array[1..100] of real;
  n, i, j: integer;

function Bobot(h: string): real;
begin
  if h = 'A' then Bobot := 4
  else if h = 'B+' then Bobot := 3.5
  else if h = 'B' then Bobot := 3
  else if h = 'C+' then Bobot := 2.5
  else if h = 'C' then Bobot := 2
  else if h = 'D' then Bobot := 1
  else Bobot := 0;
end;

begin
  clrscr;

  write('Jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    write('Nama: '); readln(nama[i]);
    write('NIM: '); readln(nim[i]);
    write('Jumlah mata kuliah: '); readln(jmlMK[i,1]);

    totalSKS[i] := 0;
    mutu[i] := 0;

    for j := 1 to jmlMK[i,1] do
    begin
      write('Nama mata kuliah: '); readln(mk[i,j]);
      write('Jumlah SKS: '); readln(sks[i,j]);
      write('Nilai (A/B+/B/C+/C/D/E): ');
      readln(nilai[i,j]);

      totalSKS[i] := totalSKS[i] + sks[i,j];
      mutu[i] := mutu[i] + sks[i,j] * Bobot(nilai[i,j]);
    end;

    ips[i] := mutu[i] / totalSKS[i];
  end;

  for i := 1 to n do
  begin
    clrscr;
    writeln('=== HASIL STUDI MAHASISWA ===');
    writeln('Nama: ', nama[i]);
    writeln('NIM : ', nim[i]);

    for j := 1 to jmlMK[i,1] do
    begin
      writeln(mk[i,j], ' | SKS: ', sks[i,j],
              ' | Nilai: ', nilai[i,j]);
    end;

    writeln('Total SKS: ', totalSKS[i]);
    writeln('IPS: ', ips[i]:0:2);

    if i < n then
    begin
      writeln;
      writeln('Tekan tombol untuk mahasiswa berikutnya...');
      readkey;
    end;
  end;

  writeln;
  writeln('Semua data selesai ditampilkan.');
  readkey;
end.