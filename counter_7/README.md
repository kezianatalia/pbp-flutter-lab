# Tugas 7: Elemen Dasar Flutter

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang bersifat statis, yang artinya tidak pernah berubah dan tidak dapat diubah. Contohnya, kita membuat widget text dan text tersebut akan tetap sama adanya walaupun kita melakukan sebuah aksi. Sedangkan Stateful widget adalah widget yang dinamis atau dapat berubah. Contohnya yaitu ketika kita melakukan sebuah aksi, sebuah text berubah. Perbedaan lainnya yaitu penggunaan setState() pada stateful widget, sedangkan pada stateless widget tidak digunakan setState().

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- floatingActionButton : membuat tombol untuk increment dan decrement
- Text : membuat tulisan
- TextStyle : memberikan styling pada tulisan, contohnya memberi warna
- Row : mengatur posisi widget secara horizontal
- Column : mengatur posisi widget secara vertikal
- Scaffold : mengatur struktur visual layout
- Padding : mengatur padding atau jarak antar container dengan widget
- Center : mengatur posisi elemen ke bagian tengah

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState merupakan cara flutter untuk memberitahu bahwa terdapat objek yang berubah dan kemungkinan mempengaruhi tampilan. Maka, aplikasi akan membangun dan memuat ulang widget serta turunannya yang terpengaruh dengan pembangunan tersebut. Variabel yang terdampak adalah yang sifatnya mutable (dapat berubah-ubah) dan terdeklarasi secara global.

## Jelaskan perbedaan antara const dengan final.
Const dan final sama-sama merupakan modifier untuk nilai variabel yang tetap dan immutable. Perbedaannya adalah const mengharuskan untuk menginisialisasi value dari variabel sebelum runtime, sedangkan final, inisialisasi value nya dapat dilakukan setelah runtime. Perbedaan lainnya yaitu const tidak bisa memiliki nilai berbeda pada variabel yang sama, sedangkan final, bisa.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
### Membuat sebuah program Flutter baru dengan nama counter_7.
- Menjalankan perintah "flutter create counter_7" pada terminal sehingga terbentuk proyek flutter baru bernama counter_7.
### Mengubah tampilan program menjadi seperti berikut.
- Mengubah title dari MyHomePage menjadi "Program Counter"
- Menambahkan widget FloatingActionButton di kiri bawah dengan icon - untuk decrement nilai counter
- Mengubah text menjadi genap atau ganjil, menyesuaikan dengan nilai counter yang tertera
- Memberikan styling pada text berupa warna merah atau biru
### Mengimplementasikan logika berikut pada program.
- Membuat function _decrementCounter untuk mengurangi nilai counter
- Handle jika nilai counter sudah 0 tidak akan bisa dikurangi lagi
-  Menambahkan logika text genap warna merah jika counter bernilai genap, dan text ganjil warna biru jika counter bernilai ganjil

# Tugas 8: Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Ketika melakukan Navigator.push, page baru akan dipush ke stack dan menimpa page lama, sehingga route ke page lama tetap ada dan kita bisa kembali ke page lama. Sedangkan pada Navigator.pushReplacement, page lama seolah-olah di-pop terlebih dahulu, lalu page baru akan di-push. Maka, route ke page lama akan dihapus dan digantikan oleh page baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- ListTile : wadah untuk menampung widget lain
- TextButton : membuat tombol
- Form : untuk menerima input dari pengguna
- Text : menampilkan tulisan
- Navigator : untuk pindah ke page lain
- DropdownButton : untuk menampilkan pilihan input berbentuk dropdown
- TextFormField : menerima input teks pada form
- Drawer : menampilkan drawer yang berisi pilihan untuk pindah halaman

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed 
- onEditingComplete
- onChange 
- onSaved 
- onTap

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
- Navigator pada Flutter berbentuk stack, yang berarti memakai metode push() dan pop() untuk menambahkan atau menghapus. Ketika melakukan Navigator.push atau Navigator.pushReplacement, screen atau page sebelumnya akan tertimpa dengan page yang baru dan tampilan halaman Flutter akan terganti ke page baru tersebut.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
### Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.
- Membuat file drawer.dart yang berisikan builder untuk membuat widget drawer.
### Menambahkan tiga tombol navigasi pada drawer/hamburger.
- Membuat widget ListTile pada drawer untuk menampilkan pilihan menu navigasi halaman.
### Menambahkan halaman form
- Membuat file form.dart yang berisikan widget Form untuk menerima input data dari pengguna. Pada tugas ini widget input yang digunakan berupa TextFormField dan DropdownButton.
### Menambahkan halaman data budget
- Membuat file data.dart untuk menampilkan data yang telah diinput pengguna. Input pada form akan dimasukkan ke dalam List kemudian ditampilkan dengan widget Card.