program Soal8_261401046_Gratio;
uses crt;

var
  Golongan  : char;      { golongan karyawan: A, B, atau C }
  JamKerja  : integer;   { total jam kerja per minggu }
  GajiPokok : longint;   { gaji pokok sesuai golongan }
  Lembur    : longint;   { uang lembur }
  Bonus     : longint;   { bonus tambahan }
  TotalGaji : longint;   { total gaji akhir }
  Valid     : boolean;   { true jika golongan dikenali }

begin
  clrscr;
  { Input golongan dan jam kerja }
  write('Masukkan golongan (A/B/C)      : ');
  readln(Golongan);
  write('Masukkan total jam kerja/minggu: ');
  readln(JamKerja);

  { Huruf kecil diubah jadi huruf besar }
  Golongan := upcase(Golongan);

  Valid := true;
  GajiPokok := 0;

  { Tentukan gaji pokok sesuai golongan }
  case Golongan of
    'A': GajiPokok := 1500000;
    'B': GajiPokok := 2000000;
    'C': GajiPokok := 2500000;
  else
    Valid := false;   { golongan di luar A, B, C }
  end;

  if Valid then
  begin
    { 1. Hitung lembur: jam kerja standar 40 jam/minggu,
         kelebihannya dihitung Rp20.000 per jam }
    if JamKerja > 40 then
      Lembur := (JamKerja - 40) * 20000
    else
      Lembur := 0;

    { 2. Bonus Rp100.000 khusus golongan C jika jam kerja lebih dari 50 jam }
    if (Golongan = 'C') and (JamKerja > 50) then
      Bonus := 100000
    else
      Bonus := 0;

    { Hitung total gaji akhir }
    TotalGaji := GajiPokok + Lembur + Bonus;

    { Tampilkan rincian gaji }
    writeln;
    writeln('=============================');
    writeln('       RINCIAN GAJI');
    writeln('=============================');
    writeln('Golongan        : ', Golongan);
    writeln('Jam Kerja       : ', JamKerja, ' jam');
    writeln('-----------------------------');
    writeln('Gaji Pokok      : Rp ', GajiPokok);
    writeln('Lembur          : Rp ', Lembur);
    writeln('Bonus           : Rp ', Bonus);
    writeln('-----------------------------');
    writeln('Total Gaji Akhir: Rp ', TotalGaji);
    writeln('=============================');
  end
  else
    writeln('Golongan tidak valid! Gunakan A, B, atau C.');

  readln;
end.