program Soal7_261401046_Gratio;
uses crt;

var
  Kode  : char;      { kode kendaraan: M, K, atau B }
  Jam   : integer;   { lama parkir dalam jam }
  Tarif : longint;   { total tarif parkir }
  Nama  : string;    { nama jenis kendaraan }
  Valid : boolean;   { true jika kode kendaraan dikenali }

begin
  clrscr;
  { Input kode kendaraan dan lama parkir }
  write('Masukkan kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(Kode);
  write('Masukkan lama parkir (jam)                      : ');
  readln(Jam);

  { Huruf kecil diubah jadi huruf besar agar 'm' dan 'M' sama saja }
  Kode := upcase(Kode);

  { Lama parkir minimal dihitung 1 jam }
  if Jam < 1 then
    Jam := 1;

  Valid := true;
  Tarif := 0;

  { Hitung tarif sesuai kode kendaraan dengan case-of.
    Rumus: jam pertama + (Jam - 1) x tarif tambahan per jam.
    Jika lama parkir lebih dari 10 jam, berlaku tarif maksimal flat. }
  case Kode of
    'M': begin
           Nama := 'Mobil';
           if Jam > 10 then
             Tarif := 30000
           else
             Tarif := 5000 + (Jam - 1) * 3000;
         end;
    'K': begin
           Nama := 'Motor';
           if Jam > 10 then
             Tarif := 10000
           else
             Tarif := 2000 + (Jam - 1) * 1000;
         end;
    'B': begin
           Nama := 'Bus';
           if Jam > 10 then
             Tarif := 50000
           else
             Tarif := 10000 + (Jam - 1) * 5000;
         end;
  else
    Valid := false;   { kode di luar M, K, B }
  end;

  { Tampilkan hasil }
  writeln;
  if Valid then
  begin
    writeln('=============================');
    writeln('Jenis Kendaraan : ', Nama);
    writeln('Lama Parkir     : ', Jam, ' jam');
    if Jam > 10 then
      writeln('Keterangan      : Tarif Maksimal Flat');
    writeln('Total Tarif     : Rp ', Tarif);
    writeln('=============================');
  end
  else
    writeln('Kode kendaraan tidak valid! Gunakan M, K, atau B.');

  readln;
end.