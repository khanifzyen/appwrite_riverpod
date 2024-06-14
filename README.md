# Clean Architecture dengan Flutter + Appwrite + Riverpod

Disini akan dijelaskan tentang bagaimana membuat aplikasi di flutter dengan prinsip clean architecture. Untuk database/auth disediakan oleh appwrite, untuk state management/provider disediakan oleh Riverpod.

## Clean Architecture

Clean architecture merupakan prinsip pengembangan aplikasi dengan sistem modular yang menerapkan **separation of concern**. Fokus utamanya adalah memisahkan perangkat lunak menjadi lapisan-lapisan, sehingga memudahkan pengembangan dan pemeliharaan sistem. Dengan lapisan yang terpisah dengan baik, bagian-bagian lapisan dapat digunakan kembali dan diperbarui secara independen. Lapisan-lapisan tersebut adalah:

1. **Presentation layer**: berisi UI dan widget-widget
2. **Domain layer**: berisi logika bisnis dan aturan bisnis
3. **Data layer**: berinteraksi dengan sumber data eksternal (external datasource)

![Gambar 1. Diagram Alir Clean Architecture](/img/clean_architecture1.png)

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
5. Tambahkan dev dependency untuk package `build_runner, riverpod_generator, freezed, json_serializable`
6. Tambahkan vs code extensions untuk `Flutter Riverpod Snippets,  Freezed`
7. buat subfolder yang diperlukan di dalam folder `lib`, seperti `domain, presentation, data, utils`
8. di dalam folder `data`, buat subfolder `appwrite, helpers, repositories, services`
9. di dalam folder `domain`, buat subfolder `entities, usecase`
10. di dalam folder `presentation`, buat subfolder `pages, providers, widgets`