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
