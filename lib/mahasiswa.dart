import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa() {
    print('Data Mahasiswa');
  }

  Mahasiswa.param({this.nama, this.jurusan, this.angkatan});

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }

  Mahasiswa.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main() {
  Mahasiswa mahasiswa = Mahasiswa();

  Mahasiswa mahasiswa2 =
      Mahasiswa.param(nama: 'Muhammad', jurusan: 'Mesin', angkatan: 2020);
  print("Nama: ${mahasiswa2.nama}");
  print('Jurusan: ${mahasiswa2.jurusan}');
  print('Angkatan: ${mahasiswa2.angkatan}\n');

  String jsonString =
      '{"nama": "Yusuf A", "jurusan" : "Informatika", "angkatan": 2023}';

  Mahasiswa mahasiswa3 = Mahasiswa.fromJsonString(jsonString);
  print('Nama Mahasiswa: ${mahasiswa3.nama}');
  print('Jurusan: ${mahasiswa3.jurusan}');
  print('Angkatan: ${mahasiswa3.angkatan}');
}
