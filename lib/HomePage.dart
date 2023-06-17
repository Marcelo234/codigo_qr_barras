import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Escanear codigo QR',
      'route': '/qr_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Escanear codigo de barras',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generar codigo QR',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codigo QR & Barcode'),
      ),
      body: Container(
        color: Colors.green, // Color de fondo verde
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Escaneador de código QR & Barcode',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              ListView.builder(
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, options[index]['route']);
                      },
                      leading: Icon(options[index]['icon']),
                      title: Text(
                        options[index]['title'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
