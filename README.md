# Perkenalan

Disini akan dijelaskan tentang bagaimana membuat aplikasi di flutter dengan prinsip clean architecture. Untuk database/auth disediakan oleh appwrite, untuk state management/provider disediakan oleh Riverpod.

Daftar Isi:

- [Perkenalan](#perkenalan)
  - [Apa itu Clean Architecture](#apa-itu-clean-architecture)
  - [Persiapan Project](#persiapan-project)
  - [Penjelasan Data Layer](#penjelasan-data-layer)
  - [Penjelasan Domain Layer](#penjelasan-domain-layer)
  - [Penjelasan Presentation Layer](#penjelasan-presentation-layer)
- [Pembuatan Fitur Authentication](#pembuatan-fitur-authentication)
  - [Mempersiapkan Appwrite](#mempersiapkan-appwrite)
  - [Ujicoba mentrigger dari Flutter ke Appwrite](#ujicoba-mentrigger-dari-flutter-ke-appwrite)

## Apa itu Clean Architecture

Clean architecture merupakan prinsip pengembangan aplikasi dengan sistem modular yang menerapkan **separation of concern**. Fokus utamanya adalah memisahkan perangkat lunak menjadi lapisan-lapisan, sehingga memudahkan pengembangan dan pemeliharaan sistem. Dengan lapisan yang terpisah dengan baik, bagian-bagian lapisan dapat digunakan kembali dan diperbarui secara independen. Lapisan-lapisan tersebut adalah:

1. **Presentation layer**: berisi UI dan widget-widget
2. **Domain layer**: berisi logika bisnis dan aturan bisnis
3. **Data layer**: berinteraksi dengan sumber data eksternal (external datasource)

![Gambar 1. Diagram Alir Clean Architecture](/img/clean_architecture.png)

Gambar 1. Diagram Alir Clean Architecture

Alurnya adalah sebagai berikut:

1. User mengakses UI
2. dalam halaman/page terdapat button yang bisa ditap(widget Button)
3. button men-trigger use case dengan struktur data yang sesuai dalam entities
4. selanjutnya diteruskan ke data sampai ada response
5. response terhadap perubahan data dipantau oleh provider
6. provider memberitahukan UI untuk mengupdate tampilannya
7. tampilan dengan perubahan data terbaru dikembalikan ke user.

## Persiapan Project

1. Buat project baru dengan perintah `flutter create appwrite_riverpod`
2. Buka project di vscode, jalankan `flutter pub get`
3. Hapus folder ios, linux, windows, macos, karena kita tidak menggunakan platform tersebut (memperkecil size project)
4. Tambahkan dependency untuk package `appwrite, flutter_riverpod, riverpod_annotation, freezed_annotation`
5. Tambahkan dev dependency untuk package `build_runner, riverpod_generator, freezed, json_serializable, riverpod_lint, custom_lint`
6. Tambahkan vs code extensions untuk `Flutter Riverpod Snippets,  Freezed`
7. buat subfolder yang diperlukan di dalam folder `lib`, seperti `domain, presentation, data, utils`
8. di dalam folder `data`, buat subfolder `appwrite, helpers, repositories, services`
9. di dalam folder `domain`, buat subfolder `entities, usecase`
10. di dalam folder `presentation`, buat subfolder `pages, providers, widgets`

## Penjelasan Data Layer

Data Layer adalah lapisan yang bertanggung jawab atas akses dan manipulasi data meliputi interaksi dengan sumber data eksternal seperti API, database, dan penyimpanan lokal. Dua komponen utama dalam layer ini adalah **repositories** dan **services**. Adapun komponen lain bisa ditambahkanID
![Gambar 2. Data Layer dalam Clean Architecture](/img/data_layer.png)

Gambar 2. Data Layer dalam Clean Architecture

## Penjelasan Domain Layer

Domain Layer adalah inti dari Clean Architecture, yang berisi logika bisnis dan aturan bisnis aplikasi. Ini adalah lapisan yang paling independen dan tidak harus bergantung pada framework atau library lain. Berikut adalah komponen utama dari Domain Layer:

- **Entities:** Ini adalah objek bisnis murni yang merepresentasikan konsep-konsep dalam aplikasi kita, seperti `User`, `Product`, atau `Invoice`. Entities harus independen dari UI atau logika database.
- **Use Cases:** Ini adalah class yang mengandung logika bisnis spesifik aplikasi. Setiap use case mewakili satu dan hanya satu aksi yang dapat dilakukan pengguna, seperti `FetchUserDetails`, `UpdateProfile`, atau `PlaceOrder`.
  
Domain Layer memastikan bahwa logika bisnis aplikasi Anda terpisah dari presentasi (UI) dan infrastruktur (data), sehingga memudahkan pengujian dan pemeliharaan.

## Penjelasan Presentation Layer

Presentation Layer adalah lapisan yang pengguna berinteraksi langsung dengannya, yang berisi UI dan logika untuk mengontrol UI tersebut dalam aplikasi Flutter. Ini adalah lapisan yang paling bergantung pada framework Flutter. Berikut adalah komponen utama dari Presentation Layer:

- **Pages:** Ini adalah layar atau halaman dalam aplikasi Anda. Setiap page biasanya mewakili satu fitur atau alur dalam aplikasi.
- **Widgets:** Ini adalah blok bangunan dasar untuk membangun UI di Flutter. Widgets mendefinisikan bagian visual dan interaksi dari UI, seperti tombol, teks, dan form.
- **Providers:** Ini adalah mekanisme untuk mengelola state yang digunakan oleh widgets. Providers membantu dalam mengirimkan data dan event antara UI dan Domain Layer.
  
Presentation Layer memastikan bahwa UI aplikasi Anda terpisah dari logika bisnis dan data, memudahkan pengembangan dan pengujian UI.

# Pembuatan Fitur Authentication

Kali ini kita akan membuat studi kasus implementasi Clean Architecture dalam dunia nyata yaitu bagaimana pembuatan fitur authentication menggunakan Clean Architecture. Secara umum untuk fitur authentication dalam sebuah aplikasi memiliki tiga komponen yaitu **Sign Up**, **Sign In**, dan **Reset Password**. Untuk penggunaan auth API, kita langsung menggunakan layanan dari Appwrite. Untuk itu sebelum mulai coding, kita perlu mempersiapkan terlebih dahulu.

## Mempersiapkan Appwrite

Appwrite tersedia dalam dua jenis versi yaitu versi cloud dan self-host. Versi cloud merupakan versi appwrite (yang tersedia gratis maupun berbayar) yang disediakan di cloud oleh Appwrite Inc, yang siap pakai untuk digunakan oleh developer. Sedangkan self-hosted kita perlu memilih provider VPS kita sendiri dengan spek minimal 2 Core CPU, 4GB RAM, 2GB Swap, 30GB Storage kemudian kita perlu install sendiri Appwrite dari docker compose. Untuk self-hosted sejatinya sebelum kita gunakan di production, bisa kita install sendiri di komputer local, dengan syarat sudah terinstall docker di komputer kita. Untuk memudahkan kita dalam memahami ini, maka kita akan gunakan versi cloud gratis yang disediakan oleh Appwrite Inc.

Berikut adalah langkah-langkahnya:
1. Mendaftar akun baru di https://cloud.appwrite.io, kemudian setelah berhasil login, buatlah project baru. Misal beri nama `my app`
2. Pada pengaturan proyek, tambahkan platform Flutter. Masukkan bundle ID aplikasi yang sudah kita buat sebelumnya: `com.example appwrite_riverpod`  (nantinya anda perlu mengganti ini menjadi unik jika anda ingin mengupload ke playstore)  
3. Pada proyek `my app`, buatlah database baru, misal beri nama `my db`
4. Nanti kita akan memerlukan Project ID, dan Database ID ke dalam project flutter.

## Ujicoba mentrigger dari Flutter ke Appwrite
