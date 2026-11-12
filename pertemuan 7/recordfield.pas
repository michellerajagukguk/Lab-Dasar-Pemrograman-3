program michelle;
uses crt;

    type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

mahasiswa.nama := 'michelle';
mahasiswa.nim := '261401019';
mahasiswa.kom :='b';

mahasiswa1 := mahasiswa;

writeln ('Data Mahasiswa ');
writeln ('Nama : ', mahasiswa.nama);
writeln ('Nim : ', mahasiswa.nim);
writeln ('kom : ', mahasiswa.kom);

writeln;

writeln ('Data Mahasiswa ke-1 ');
writeln ('Nama : ', mahasiswa1.nama);
writeln ('Nim : ', mahasiswa1.nim);
writeln ('kom : ', mahasiswa1.kom);


end.