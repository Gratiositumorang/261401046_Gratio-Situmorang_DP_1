program Soal10_261401046_Gratio;
uses crt;

var
  Nomor : integer;   { nomor hari yang diinput (1-7) }

begin
  clrscr;
  { Input nomor hari }
  write('Masukkan nomor hari (1-7): ');
  readln(Nomor);

  { Tampilkan nama hari sesuai nomor dengan case-of }
  case Nomor of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Nomor tidak valid! Masukkan angka 1 sampai 7.');
  end;

  readln;
end.