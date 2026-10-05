program Soal3_261401046_Gratio;
uses crt;

var
  N       : integer;  { batas akhir deret }
  Pilihan : integer;  { kategori deret: 1 = Ganjil, 2 = Genap }
  i       : integer;  { angka yang sedang diperiksa }

begin
  clrscr;
  { 1. Minta masukkan N dan pilihan kategori }
  write('Masukkan nilai N: ');
  readln(N);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
  readln(Pilihan);

  writeln;
  writeln('Deret angka hasil penyaringan:');

  { 2. Perulangan while dari 1 sampai N.
       i dimulai dari 0, lalu ditambah 1 di awal setiap putaran.
       (Penambahan ditaruh di awal agar tidak terlewat saat continue dipakai,
        kalau tidak program bisa berputar tanpa henti) }
  i := 0;
  while i < N do
  begin
    i := i + 1;

    { 3. Lewati angka yang tidak sesuai kategori }
    if (Pilihan = 1) and (i mod 2 = 0) then   { minta ganjil, tapi angka genap }
      continue;
    if (Pilihan = 2) and (i mod 2 <> 0) then  { minta genap, tapi angka ganjil }
      continue;

    { 4. Lewati angka kelipatan 5 }
    if i mod 5 = 0 then
      continue;

    { 5. Angka yang lolos penyaringan ditampilkan }
    write(i, ' ');
  end;

  writeln;
  readln;
end.