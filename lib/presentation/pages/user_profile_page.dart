import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../../core/theme/theme.dart';
import '../../data/static/static_data.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});
  @override
  UserProfilePageState createState() => UserProfilePageState();
}

class UserProfilePageState extends State<UserProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _additionalInfoController =
      TextEditingController();
  DateTime? _selectedDate;
  int? _selectedGender;
  int? _selectedJob;
  int? _selectedCity;
  int? _selectedStatus;
  int? _selectedEducation;
  final TextEditingController _emergencyContactController =
      TextEditingController();
  XFile? _profileImage;
  final MaterialTheme materialTheme = const MaterialTheme(TextTheme());

  void _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _profileImage = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Pengguna',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pemilik kos lebih menyukai calon penyewa dengan profil yang jelas dan lengkap',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: _profileImage != null
                        ? FileImage(File(_profileImage!.path))
                        : const AssetImage('assets/profile_placeholder.png')
                            as ImageProvider,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: colorScheme.primary,
                        child: Icon(Icons.add,
                            size: 20, color: colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(
                labelText: 'Jenis Kelamin',
                border: OutlineInputBorder(),
              ),
              value: _selectedGender,
              items: StaticData.jenisKelamin.entries
                  .map((entry) => DropdownMenuItem<int>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              //readOnly: true,
              decoration: InputDecoration(
                labelText: _selectedDate == null
                    ? 'Tanggal Lahir'
                    : 'Tanggal Lahir: ${_selectedDate!.toLocal()}'
                        .split(' ')[0],
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _pickDate(context),
                ),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(
                labelText: 'Pekerjaan',
                border: OutlineInputBorder(),
              ),
              value: _selectedJob,
              items: StaticData.pekerjaan.entries
                  .map((entry) => DropdownMenuItem<int>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedJob = value;
                  _additionalInfoController.clear();
                });
              },
            ),
            const SizedBox(height: 20),
            if (_selectedJob != null)
              TextField(
                controller: _additionalInfoController,
                decoration: InputDecoration(
                  labelText: _selectedJob == 1
                      ? 'Nama Sekolah/Kampus'
                      : _selectedJob == 2
                          ? 'Nama Kantor/Instansi'
                          : 'Deskripsi Pekerjaan',
                  border: const OutlineInputBorder(),
                ),
              ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              items: StaticData.pendidikan.entries
                  .map((entry) => DropdownMenuItem<int>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Kota Asal',
                border: OutlineInputBorder(),
              ),
              value: _selectedCity,
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });

                // Navigate to city selection screen
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(
                labelText: 'Status',
                border: OutlineInputBorder(),
              ),
              value: _selectedStatus,
              items: StaticData.statusPernikahan.entries
                  .map((entry) => DropdownMenuItem<int>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value;
                });
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(
                labelText: 'Pendidikan Terakhir',
                border: OutlineInputBorder(),
              ),
              value: _selectedEducation,
              items: StaticData.pendidikan.entries
                  .map((entry) => DropdownMenuItem<int>(
                        value: entry.key,
                        child: Text(entry.value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedEducation = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _emergencyContactController,
              decoration: const InputDecoration(
                labelText: 'Kontak Darurat',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
