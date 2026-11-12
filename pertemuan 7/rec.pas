program record1;
uses crt;

    type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa : data;


begin 
clrscr;
textcolor(yellow);
mahasiswa.nama := 'michelle';
mahasiswa.nim := '261401019';
mahasiswa.kom :='b';

writeln ('Nama : ', mahasiswa.nama);
writeln ('Nim : ', mahasiswa.nim);
writeln ('kom : ', mahasiswa.kom);

end.