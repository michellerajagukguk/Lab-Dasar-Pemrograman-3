program recordbnyak;
uses crt;

//record nested
type 
    rumah = record
        jalan : string;
        no : integer;
        kota : string;
    end;


//record utama
type 
        data = record
            nama : string;
            nim : string;
            kom : char;
            alamat : rumah;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

with mahasiswa do 
    begin 
        nama := 'mich';
        nim := '261401019';
        kom :='b';
        alamat.jalan := 'marakas';
        alamat.no := 10;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;
writeln;
with mahasiswa1 do 
    begin 
        nama := 'chel';
        nim := '261401190';
        kom :='C';
        alamat.jalan := 'Melati';
        alamat.no := 51;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;

end.