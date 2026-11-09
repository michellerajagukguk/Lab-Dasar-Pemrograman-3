program nilai;

uses crt;

var
  tugas, kuis, uas, rata: array[1..5] of real;
  n, i: integer;

begin
  clrscr;

  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);

  if (n >= 1) and (n <= 5) then
  begin
    for i := 1 to n do
    begin
      writeln;
      writeln('Mahasiswa ke-', i);

      write('Nilai tugas: ');
      readln(tugas[i]);

      write('Nilai kuis: ');
      readln(kuis[i]);

      write('Nilai UAS: ');
      readln(uas[i]);

      rata[i] := (tugas[i] + kuis[i] + uas[i]) / 3;
    end;

    writeln;
    writeln('Hasil nilai mahasiswa:');

    for i := 1 to n do
    begin
      writeln('Mahasiswa ke-', i);
      writeln('Rata-rata: ', rata[i]:0:2);

      if rata[i] >= 70 then
        writeln('Keterangan: LULUS')
      else
        writeln('Keterangan: TIDAK LULUS');

      writeln;
    end;
  end
  else
    writeln('Jumlah mahasiswa harus 1 sampai 5.');

  readln;
end.
