program Soal5_261401046_Gratio;
uses crt;

var
  M, N          : integer;  { M = jumlah mahasiswa, N = jumlah tugas }
  i, j          : integer;  { i = penghitung mahasiswa, j = penghitung tugas }
  Nilai         : real;     { nilai satu tugas }
  Total         : real;     { jumlah semua nilai tugas satu mahasiswa }
  Rata          : real;     { rata-rata nilai satu mahasiswa }
  JumlahLulus   : integer;  { banyaknya mahasiswa yang LULUS }
  JumlahTidak   : integer;  { banyaknya mahasiswa yang TIDAK LULUS }

begin
  clrscr;
  { 1. Minta jumlah mahasiswa dan jumlah tugas }
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N)     : ');
  readln(N);

  { Awalnya belum ada mahasiswa yang dihitung }
  JumlahLulus := 0;
  JumlahTidak := 0;

  { 2. Nested loop:
       perulangan LUAR (i) untuk setiap mahasiswa,
       perulangan DALAM (j) untuk setiap nilai tugas mahasiswa itu }
  for i := 1 to M do
  begin
    writeln;
    writeln('--- Mahasiswa ke-', i, ' ---');

    Total := 0;   { kosongkan total untuk mahasiswa yang baru }

    { Perulangan dalam: input N nilai tugas }
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ' : ');
      readln(Nilai);
      Total := Total + Nilai;   { tambahkan nilai ke total }
    end;

    { 3. Hitung rata-rata, lalu tentukan LULUS atau TIDAK LULUS }
    Rata := Total / N;
    write('Rata-rata nilai : ', Rata:0:2, ' -> ');

    if Rata >= 65 then
    begin
      writeln('LULUS');
      JumlahLulus := JumlahLulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      JumlahTidak := JumlahTidak + 1;
    end;
  end;

  { 4. Tampilkan rekapitulasi akhir }
  writeln;
  writeln('=============================');
  writeln('     REKAPITULASI NILAI');
  writeln('=============================');
  writeln('Total Mahasiswa     : ', M);
  writeln('Jumlah LULUS        : ', JumlahLulus);
  writeln('Jumlah TIDAK LULUS  : ', JumlahTidak);
  writeln('=============================');

  readln;
end.