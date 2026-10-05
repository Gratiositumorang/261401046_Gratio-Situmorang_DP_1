program Soal1_261401046_Gratio;
uses crt;

var
  { Harga adalah "deretan kotak" untuk menyimpan harga banyak barang.
    Harga[1] = harga barang ke-1, Harga[2] = harga barang ke-2, dst.
    Bisa menyimpan sampai 100 barang. }
  Harga        : array[1..100] of real;
  N            : integer;  { jumlah barang }
  i            : integer;  { penghitung perulangan }
  PersenDiskon : integer;  { persen diskon: 0, 10, atau 20 }
  Total        : real;     { total belanja sebelum diskon }
  Diskon       : real;     { besar diskon dalam rupiah }
  TotalBayar   : real;     { total yang harus dibayar }

begin
  clrscr;
  { 1. Menginput jumlah barang }
  write('Masukkan jumlah barang (maks 100): ');
  readln(N);

  { 2. Menginput harga barang ke-1 sampai ke-N, lalu menyimpan ke dalam Harga[i] }
  Total := 0;
  writeln;
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ' : Rp ');
    readln(Harga[i]);
    Total := Total + Harga[i];   { menambahkan harga ke total }
  end;

  { 3. Menentukan diskon dengan if-else }
  if Total < 100000 then
    PersenDiskon := 0
  else if Total < 500000 then
    PersenDiskon := 10
  else
    PersenDiskon := 20;

  { 4. Menghitung diskon dan total bayar }
  Diskon := Total * PersenDiskon / 100;
  TotalBayar := Total - Diskon;

  { 5. Menampilkan rincian belanja }
  writeln;
  writeln('=============================');
  writeln('        RINCIAN BELANJA');
  writeln('=============================');
  for i := 1 to N do
    writeln('Barang ke-', i, ' : Rp ', Harga[i]:0:0);

  { 6. Menampilkan total dan diskon }
  writeln('-----------------------------');
  writeln('Total Sebelum Diskon : Rp ', Total:0:0);
  writeln('Persentase Diskon    : ', PersenDiskon, '%');
  writeln('Besar Diskon         : Rp ', Diskon:0:0);
  writeln('Total Bayar Akhir    : Rp ', TotalBayar:0:0);
  writeln('=============================');

  readln;
end.