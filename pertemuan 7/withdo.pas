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

    with mahasiswa do 
    begin 
        nama := 'michelle';
        nim := '261401019';
        kom :='b';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);

    end;
writeln;
    with mahasiswa1 do 
    begin 
        nama := 'michael';
        nim := '261401019';
        kom :='b';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);
    end;
end.