import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ProfileCard(
        fullName: 'Nama Lengkap',
        jobTitle: 'Jabatan',
        uniid: 'uniid',
        email: 'john.doe@example.com',
        namabergelar: 'Nama Bergelar',
        homebase: 'Homebase',
        notelp: '(123) 456-7890',
       
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String fullName;
  final String jobTitle;
  final String uniid;
  final String email;
  final String namabergelar;
  final String homebase;
  final String notelp;
 

  ProfileCard({
    required this.fullName,
    required this.jobTitle,
    required this.uniid,
    required this.email,
    required this.namabergelar,
    required this.homebase,
    required this.notelp,
   
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
       
        SizedBox(height: 12),
        Text(
          fullName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          jobTitle,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        SizedBox(height: 16),
        Divider(),
        SizedBox(height: 16),
        
        SizedBox(height: 8),
        Text(
          'Uniid : $uniid\nEmail: $email\nNama Bergelar : $namabergelar\nHomebase : $homebase\nNoTelp: $notelp\n',
          style: TextStyle(fontSize: 16),
        ),
        
       
      ],
    );
  }
}
