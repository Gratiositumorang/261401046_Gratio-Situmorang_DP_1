program Soal9_261401046_Gratio;
uses crt;

var
  Tahun   : integer;   { tahun yang diinput }
  Bulan   : integer;   { nomor bulan (1-12) }
  Hari    : integer;   { jumlah hari dalam bulan tersebut }
  Kabisat : boolean;   { true jika tahun kabisat }

begin
clrscr;
  { 1. Input tahun dan nomor bulan }
  write('Masukkan tahun            : ');
  readln(Tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(Bulan);

  { Cek apakah bulan valid }
  if (Bulan < 1) or (Bulan > 12) then
    writeln('Nomor bulan tidak valid! Masukkan angka 1 sampai 12.')
  else
  begin
    { 2. Cek tahun kabisat dengan operator mod:
         kabisat jika habis dibagi 400,
         ATAU habis dibagi 4 tetapi tidak habis dibagi 100 }
    if (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0)) then
      Kabisat := true
    else
      Kabisat := false;

    { 3. Tentukan jumlah hari sesuai nomor bulan }
    case Bulan of
      1, 3, 5, 7, 8, 10, 12: Hari := 31;
      4, 6, 9, 11          : Hari := 30;
      2: begin
           if Kabisat then
             Hari := 29
           else
             Hari := 28;
         end;
    end;

    { Tampilkan hasil }
    writeln;
    writeln('=============================');
    writeln('Tahun   : ', Tahun);
    if Kabisat then
      writeln('Status  : Tahun Kabisat')
    else
      writeln('Status  : Bukan Tahun Kabisat');
    writeln('Bulan   : ', Bulan);
    writeln('Jumlah hari: ', Hari, ' hari');
    writeln('=============================');
  end;

  readln;
end.