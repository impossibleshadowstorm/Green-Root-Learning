import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:elearner/services/storage_services.dart';
import 'package:elearner/firebase_options.dart';

class Global {
  static late StorageServices storageServices;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    storageServices = await StorageServices().init();
  }
}
