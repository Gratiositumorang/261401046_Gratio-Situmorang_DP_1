program Soal4_261401046_Gratio;
uses crt;

var
  Pilihan : integer;  { pilihan menu operasi (1 sampai 5) }
  A, B    : real;     { dua angka operand }
  X, Y    : integer;  { versi bilangan bulat dari A dan B (untuk DIV & MOD) }
  Ulang   : char;     { jawaban pengguna: Y atau T }

begin
  clrscr;
  { Seluruh proses diulang dengan repeat-until sampai pengguna menjawab T/t }
  repeat
    { 1. Tampilkan menu pilihan operasi }
    writeln('=============================');
    writeln('      KALKULATOR SEDERHANA');
    writeln('=============================');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('-----------------------------');
    write('Pilih operasi (1-5): ');
    readln(Pilihan);

    { 2. Minta dua angka operand }
    write('Masukkan angka pertama : ');
    readln(A);
    write('Masukkan angka kedua   : ');
    readln(B);

    writeln;

    { 3. Hitung dan tampilkan hasil sesuai pilihan menggunakan case-of }
    case Pilihan of
      1: writeln('Hasil: ', A:0:2, ' + ', B:0:2, ' = ', A + B:0:2);
      2: writeln('Hasil: ', A:0:2, ' - ', B:0:2, ' = ', A - B:0:2);
      3: writeln('Hasil: ', A:0:2, ' x ', B:0:2, ' = ', A * B:0:2);
      4: begin
           { pembagian dengan nol tidak boleh, jadi dicek dulu }
           if B = 0 then
             writeln('Error: tidak bisa membagi dengan nol!')
           else
             writeln('Hasil: ', A:0:2, ' / ', B:0:2, ' = ', A / B:0:2);
         end;
      5: begin
           { DIV dan MOD hanya untuk bilangan bulat,
             jadi A dan B diubah dulu dengan trunc (membuang angka desimal) }
           X := trunc(A);
           Y := trunc(B);
           if Y = 0 then
             writeln('Error: tidak bisa membagi dengan nol!')
           else
           begin
             writeln('Hasil: ', X, ' DIV ', Y, ' = ', X div Y);
             writeln('Hasil: ', X, ' MOD ', Y, ' = ', X mod Y);
           end;
         end;
    else
      writeln('Pilihan tidak valid! Pilih angka 1 sampai 5.');
    end;

    { 4. Tanya apakah ingin menghitung lagi }
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(Ulang);
    writeln;
  until (Ulang = 'T') or (Ulang = 't');   { berhenti jika jawaban T atau t }

  writeln('Terima kasih telah menggunakan kalkulator!');
  readln;
end.