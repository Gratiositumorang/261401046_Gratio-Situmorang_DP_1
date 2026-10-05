program Soal6_261401046_Gratio;
uses crt;

var
  Tugas      : real;    { nilai tugas }
  UTS        : real;    { nilai UTS }
  UAS        : real;    { nilai UAS }
  Kehadiran  : real;    { persentase kehadiran (0-100) }
  Akhir      : real;    { nilai akhir }
  Indeks     : char;    { indeks huruf: A, B, C, D, atau E }

begin
  clrscr;
  { Input nilai dan kehadiran }
  write('Masukkan Nilai Tugas       : ');
  readln(Tugas);
  write('Masukkan Nilai UTS         : ');
  readln(UTS);
  write('Masukkan Nilai UAS         : ');
  readln(UAS);
  write('Masukkan Kehadiran (%)     : ');
  readln(Kehadiran);

  { 1. Hitung nilai akhir: Tugas 30%, UTS 30%, UAS 40% }
  Akhir := (Tugas * 0.3) + (UTS * 0.3) + (UAS * 0.4);

  { 3. Tentukan indeks huruf }
  if Akhir >= 85 then
    Indeks := 'A'
  else if Akhir >= 75 then
    Indeks := 'B'
  else if Akhir >= 60 then
    Indeks := 'C'
  else if Akhir >= 50 then
    Indeks := 'D'
  else
    Indeks := 'E';

  { Tampilkan nilai akhir dan indeks huruf }
  writeln;
  writeln('=============================');
  writeln('Nilai Akhir   : ', Akhir:0:2);
  writeln('Indeks Huruf  : ', Indeks);

  { 2. Tentukan status: LULUS jika nilai akhir >= 60 DAN kehadiran >= 80% }
  if (Akhir >= 60) and (Kehadiran >= 80) then
    writeln('Status        : LULUS')
  else
    writeln('Status        : TIDAK LULUS');
  writeln('=============================');

  readln;
end.