program quiz1;
uses crt;

type
    PInteger = ^integer;
    PString = ^string;

var
    nama: array[1..10] of string;
    harga: array[1..10] of integer;
    pHarga: PInteger;
    pNama: PString;
    i, n: integer;
    max, min: integer;

begin
    clrscr;

    write('Masukkan jumlah makanan: ');
    readln(n);

    for i := 1 to n do
    begin
        writeln;
        write('Nama makanan: ');
        readln(nama[i]);

        write('Harga makanan: ');
        readln(harga[i]);
    end;

    max := 1;
    min := 1;

    for i := 1 to n do
    begin
        if harga[i] > harga[max] then
            max := i;

        if harga[i] < harga[min] then
            min := i;
    end;

    pHarga := @harga[max];
    pNama := @nama[max];

    writeln;
    writeln('MAKANAN TERMAHAL');
    writeln('Nama  : ', pNama^);
    writeln('Harga : ', pHarga^);

    pHarga := @harga[min];
    pNama := @nama[min];

    writeln;
    writeln('=== MAKANAN TERMURAH ===');
    writeln('Nama  : ', pNama^);
    writeln('Harga : ', pHarga^);

    readln;
end.