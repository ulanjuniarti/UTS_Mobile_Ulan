import 'package:flutter/material.dart';
import 'imt.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, Ulan Juniarti',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  buildContainer(
                    title: "Index Masa Tubuh",
                    subtitle:
                        "Ketahui status gizimu melalui perbandingan berat dan tinggi badan",
                    color: Color.fromARGB(255, 228, 185, 106),
                    onPressed: () {
                      // Tambahkan rute atau tindakan yang ingin dijalankan saat tombol ditekan
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => BMICalculator(),
                        ),
                      );
                    },
                  ),
                  buildContainer(
                    title: "Energi Basal",
                    subtitle:
                        "Ketahui kebutuhan energi yang dibutuhkan tubuhmu untuk menjalankan fungsi fisiologis tubuh",
                    color: Color.fromARGB(255, 241, 129, 125),
                    onPressed: () {
                      // Tambahkan rute atau tindakan yang ingin dijalankan saat tombol ditekan
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SecondContainerRoute(),
                        ),
                      );
                    },
                  ),
                  buildContainer(
                    title: "Energi Expenditure",
                    subtitle:
                        "Ketahui kebutuhan energi yang dibutuhkan tubuhmu untuk mempertahankan kehidupan",
                    color: Color.fromARGB(255, 142, 243, 201),
                    onPressed: () {
                      // Tambahkan rute atau tindakan yang ingin dijalankan saat tombol ditekan
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => ThirdContainerRoute(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Cek Sekarang'),
          ),
        ],
      ),
    );
  }
}

class FirstContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index Masa Tubuh'),
      ),
      body: Center(
        child: Text('Konten untuk Index Masa Tubuh'),
      ),
    );
  }
}

class SecondContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Energi Basal'),
      ),
      body: Center(
        child: Text('Konten untuk Energi Basal'),
      ),
    );
  }
}

class ThirdContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Energi Expenditure'),
      ),
      body: Center(
        child: Text('Konten untuk Energi Expenditure'),
      ),
    );
  }
}
