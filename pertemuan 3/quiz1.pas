program statussuhu;

var
  suhu: real;

begin
  write('masukkan suhu tubuh: ');
  readln(suhu);

  if suhu < 36 then
    writeln('suhu rendah')
  else if suhu <= 37.5 then
    writeln('suhu normal')
  else
    writeln('demam');

  readln;
end.