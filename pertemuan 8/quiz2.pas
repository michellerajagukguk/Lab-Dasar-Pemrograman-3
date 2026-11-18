program quiz2;
uses crt;

type
    PInteger = ^integer;

var
    angka: integer;
    p1, p2: PInteger;

begin
    clrscr;

    angka := 100;

    p1 := @angka;
    p2 := @angka;

    writeln('DATA VARIABEL');
    writeln('Nilai variabel : ', angka);

    writeln;
    writeln('ALAMAT VARIABEL');
    writeln('Alamat p1 : ', PtrUInt(p1));
    writeln('Alamat p2 : ', PtrUInt(p2));

    writeln;
    writeln('NILAI POINTER');
    writeln('Nilai p1^ : ', p1^);
    writeln('Nilai p2^ : ', p2^);

    readln;
end.
