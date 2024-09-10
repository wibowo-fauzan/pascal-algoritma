program MenuPilihan;

const
  MenuText = 'Welcome Di operator Matematika';

var
  pilihan: integer;

procedure TampilkanMenu;
var
  i, textWidth, startX: integer;
begin
  clrscr;
  textWidth := Length(MenuText);  { Panjang teks }
  startX := (ScreenWidth - textWidth) div 2;  { Posisi X untuk teks di tengah }
  
  { Menampilkan teks di tengah }
  gotoxy(startX, 1);  { Menetapkan posisi kursor ke baris 1 dan kolom startX }
  writeln(MenuText);
  
  { Menampilkan menu }
  writeln('1. Penjumlahan');
  writeln('2. Mesen Makanan');
  writeln('3. Mesen Mobil');
  writeln('4. Pilihan 4');  { Misalnya bisa diganti dengan aksi lain jika perlu }
  writeln('5. Mesen Minuman');
  writeln('0. Keluar');
end;

procedure Penjumlahan;
var
  angka1, angka2, hasil: integer;
begin
  writeln('Masukkan angka pertama:');
  readln(angka1);
  writeln('Masukkan angka kedua:');
  readln(angka2);
  hasil := angka1 + angka2;
  writeln('Hasil penjumlahan adalah: ', hasil);
end;

procedure MesenMakanan;
begin
  writeln('Anda memilih untuk memesan makanan.');
  writeln('Silakan pilih jenis makanan yang ingin dipesan.');
end;

procedure MesenMobil;
begin
  writeln('Anda memilih untuk memesan mobil.');
  writeln('Silakan pilih jenis mobil yang ingin dipesan.');
end;

procedure MesenMinuman;
begin
  writeln('Anda memilih untuk memesan minuman.');
  writeln('Silakan pilih jenis minuman yang ingin dipesan.');
end;

procedure EksekusiPilihan(pilihan: integer);
begin
  case pilihan of
    1: Penjumlahan;
    2: MesenMakanan;
    3: MesenMobil;
    4: writeln('Pilihan 4 belum diimplementasikan.');
    5: MesenMinuman;
  else
    writeln('Pilihan tidak valid.');
  end;
end;

begin
  repeat
    TampilkanMenu;  { Menampilkan menu }
    writeln('Masukkan pilihan Anda (0 untuk keluar):');
    readln(pilihan);  { Membaca pilihan dari pengguna }

    if pilihan <> 0 then
    begin
      EksekusiPilihan(pilihan);  { Menjalankan pilihan yang dipilih }
      writeln('Tekan Enter untuk kembali ke menu...');
      readln;  { Menunggu input dari pengguna sebelum kembali ke menu }
    end;

  until pilihan = 0;  { Ulangi hingga pengguna memilih untuk keluar }

  writeln('Terima kasih telah menggunakan program.');
end.
