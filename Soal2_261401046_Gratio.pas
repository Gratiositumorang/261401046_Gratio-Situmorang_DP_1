program Soal2_261401046_Gratio;
uses crt;
var
  SandiRahasia : string;   { kata sandi yang benar (disimpan di program) }
  SandiInput   : string;   { kata sandi yang diketik pengguna }
  Percobaan    : integer;  { menghitung sudah berapa kali mencoba }
  Berhasil     : boolean;  { true jika login berhasil, false jika belum }

begin
  clrscr;
  { 1. Simpan kata sandi rahasia }
  SandiRahasia := 'pascal123';

  { Awalnya belum ada percobaan dan belum berhasil login }
  Percobaan := 0;
  Berhasil := false;

  { 2. memberi kesempatan maksimal 3 kali dengan repeat-until }
  repeat
    Percobaan := Percobaan + 1;   { tambah hitungan percobaannya }

    write('Percobaan ke-', Percobaan, ', masukkan kata sandi: ');
    readln(SandiInput);

    { 3. mengecek apakah kata sandi benar }
    if SandiInput = SandiRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      Berhasil := true;
      break;   { menghentikan perulangan karena sudah berhasil }
    end
    else
      writeln('Kata sandi salah!');
  until Percobaan = 3;   { berhenti setelah 3 kali mencoba }

  { 4. jika setelah 3 kali masih belum berhasil }
  if Berhasil = false then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.