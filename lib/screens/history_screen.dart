import 'package:flutter/material.dart';

class HistoryEntry {
  final String name;
  final String nik;
  final String gender;
  final String bloodType;
  final String address;
  final String kelurahan;
  final String rtRw;
  final String kecamatan;
  final String religion;
  final String maritalStatus;
  final String occupation;
  final String citizenship;
  final String validUntil;

  HistoryEntry({
    required this.name,
    required this.nik,
    required this.gender,
    required this.bloodType,
    required this.address,
    required this.kelurahan,
    required this.rtRw,
    required this.kecamatan,
    required this.religion,
    required this.maritalStatus,
    required this.occupation,
    required this.citizenship,
    required this.validUntil,
  });
}

class History {
  static List<HistoryEntry> entries = [];

  static void addToHistory(HistoryEntry entry) {
    entries.add(entry);
  }
}

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 78, 173),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }

  Widget _buildEntry(BuildContext context, String imagePath, String name) {
    return GestureDetector(
      onTap: () {
        // Show the popup for the tapped image
        _showImagePopup(context, imagePath);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              imagePath,
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }

  void _showImagePopup(BuildContext context, String imagePath) {
    // Implement your logic to show a popup with the tapped image
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        );
      },
    );
  }
}
