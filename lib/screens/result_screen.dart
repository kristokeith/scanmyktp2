import 'package:flutter/material.dart';
import 'package:scanmyktp/screens/history_screen.dart';

class KtpInfo {
  final String nik;
  final String name;
  final String gender;
  final String bloodType;
  final String address;
  final String rtRw;
  final String kelurahan;
  final String kecamatan;
  final String religion;
  final String maritalStatus;
  final String occupation;
  final String citizenship;
  final String validUntil;

  KtpInfo({
    required this.nik,
    required this.name,
    required this.gender,
    required this.bloodType,
    required this.address,
    required this.rtRw,
    required this.kelurahan,
    required this.kecamatan,
    required this.religion,
    required this.maritalStatus,
    required this.occupation,
    required this.citizenship,
    required this.validUntil,
  });
}

class KtpParser {
  static KtpInfo parse(String text) {
    final RegExp nikPattern =
        RegExp(r'NIK(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp namePattern =
        RegExp(r'NAMA(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp genderPattern =
        RegExp(r'JENIS KELAMIN(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp bloodTypePattern =
        RegExp(r'GOLONGAN DARAH(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp addressPattern =
        RegExp(r'ALAMAT(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp rtRwPattern =
        RegExp(r'RT\/RW(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp kelurahanPattern =
        RegExp(r'KEL\/DESA(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp kecamatanPattern =
        RegExp(r'KECAMATAN(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp religionPattern =
        RegExp(r'AGAMA(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp maritalStatusPattern =
        RegExp(r'STATUS PERKAWINAN(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp occupationPattern =
        RegExp(r'PEKERJAAN(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp citizenshipPattern =
        RegExp(r'KEWARGANEGARAAN(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);
    final RegExp validUntilPattern =
        RegExp(r'BERLAKU HINGGA(?:.*?)\n(.*?)(?:\n|$)', dotAll: true);

    final Match? nikMatch = nikPattern.firstMatch(text);
    final Match? nameMatch = namePattern.firstMatch(text);
    final Match? genderMatch = genderPattern.firstMatch(text);
    final Match? bloodTypeMatch = bloodTypePattern.firstMatch(text);
    final Match? addressMatch = addressPattern.firstMatch(text);
    final Match? rtRwMatch = rtRwPattern.firstMatch(text);
    final Match? kelurahanMatch = kelurahanPattern.firstMatch(text);
    final Match? kecamatanMatch = kecamatanPattern.firstMatch(text);
    final Match? religionMatch = religionPattern.firstMatch(text);
    final Match? maritalStatusMatch = maritalStatusPattern.firstMatch(text);
    final Match? occupationMatch = occupationPattern.firstMatch(text);
    final Match? citizenshipMatch = citizenshipPattern.firstMatch(text);
    final Match? validUntilMatch = validUntilPattern.firstMatch(text);

    final String nik = nikMatch?.group(1)?.trim() ?? 'NIK Not Found';
    final String name = nameMatch?.group(1)?.trim() ?? 'Name Not Found';
    final String gender = genderMatch?.group(1)?.trim() ?? 'Gender Not Found';
    final String bloodType =
        bloodTypeMatch?.group(1)?.trim() ?? 'Blood Type Not Found';
    final String address =
        addressMatch?.group(1)?.trim() ?? 'Address Not Found';
    final String rtRw = rtRwMatch?.group(1)?.trim() ?? 'RT/RW Not Found';
    final String kelurahan =
        kelurahanMatch?.group(1)?.trim() ?? 'Kelurahan/Desa Not Found';
    final String kecamatan =
        kecamatanMatch?.group(1)?.trim() ?? 'Kecamatan Not Found';
    final String religion =
        religionMatch?.group(1)?.trim() ?? 'Religion Not Found';
    final String maritalStatus =
        maritalStatusMatch?.group(1)?.trim() ?? 'Marital Status Not Found';
    final String occupation =
        occupationMatch?.group(1)?.trim() ?? 'Occupation Not Found';
    final String citizenship =
        citizenshipMatch?.group(1)?.trim() ?? 'Citizenship Not Found';
    final String validUntil =
        validUntilMatch?.group(1)?.trim() ?? 'Valid Until Not Found';

    return KtpInfo(
      nik: nik,
      name: name,
      gender: gender,
      bloodType: bloodType,
      address: address,
      rtRw: rtRw,
      kelurahan: kelurahan,
      kecamatan: kecamatan,
      religion: religion,
      maritalStatus: maritalStatus,
      occupation: occupation,
      citizenship: citizenship,
      validUntil: validUntil,
    );
  }
}

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KtpInfo ktpInfo = KtpParser.parse(text);

    return Scaffold(
      appBar: AppBar(
        title: const Text('KTP Result'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection('NIK:', ktpInfo.nik),
            _buildSection('Nama:', ktpInfo.name),
            _buildSection('Jenis Kelamin:', ktpInfo.gender),
            _buildSection('Alamat:', ktpInfo.address),
            _buildSection('RT/RW:', ktpInfo.rtRw),
            _buildSection('Kel/Desa:', ktpInfo.kelurahan),
            _buildSection('Kecamatan:', ktpInfo.kecamatan),
            _buildSection('Agama:', ktpInfo.religion),
            _buildSection('Status Perkawinan:', ktpInfo.maritalStatus),
            _buildSection('Pekerjaan:', ktpInfo.occupation),
            _buildSection('Kewarganegaraan:', ktpInfo.citizenship),
            _buildSection('Berlaku Hingga:', ktpInfo.validUntil),
            // Tambahkan bagian lainnya seperti Tanggal Lahir, Jenis Kelamin, dll.
            ElevatedButton(
              onPressed: () {
                _saveToHistory(ktpInfo);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Saved to History'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF872341),
              ),
              child: const Text('Save to History'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(content),
        ],
      ),
    );
  }

  void _saveToHistory(KtpInfo ktpInfo) {
    final entry = HistoryEntry(
      nik: ktpInfo.nik,
      name: ktpInfo.name,
      gender: ktpInfo.gender,
      bloodType: ktpInfo.bloodType,
      address: ktpInfo.address,
      rtRw: ktpInfo.rtRw,
      kelurahan: ktpInfo.kelurahan,
      kecamatan: ktpInfo.kecamatan,
      religion: ktpInfo.religion,
      maritalStatus: ktpInfo.maritalStatus,
      occupation: ktpInfo.occupation,
      citizenship: ktpInfo.citizenship,
      validUntil: ktpInfo.validUntil,
    );

    History.addToHistory(entry);
  }
}
