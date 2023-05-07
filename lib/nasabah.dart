class Nasabah {
  String? nama;
  String? alamat;
  double? saldo;

  Nasabah({this.nama, this.alamat}) {
    saldo = 0;
  }

  double? simpan(double? jumlah) {
    saldo = saldo! + jumlah!;
    return jumlah;
  }

  double? ambil(double? jumlah) {
    saldo = saldo! - jumlah!;
    return jumlah;
  }

  void display() {
    print('--- Data Nasabah Bank ---');
    print('Nama nasabah: $nama');
    print('Alamat: $alamat');
    print('Saldo akhir: $saldo');
    print('----------=====----------\n');
  }
}

void main() {
  Nasabah nasabah1 = Nasabah(nama: 'Yusuf', alamat: 'Banyumas');
  nasabah1.simpan(500000);
  nasabah1.ambil(100000);
  nasabah1.display();

  Nasabah nasabah2 = Nasabah(nama: 'Ardabili', alamat: 'Jogja');
  nasabah2.simpan(800000);
  nasabah2.ambil(600000);
  nasabah2.display();
}
