import 'package:supabase_flutter/supabase_flutter.dart';

class SClient {
  static final supabase = Supabase.instance.client;
  Future<void> init() async {
    await Supabase.initialize(
      url: 'https://bcnktdgsnusxyvqzhdey.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJjbmt0ZGdzbnVzeHl2cXpoZGV5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYyOTEzMjEsImV4cCI6MjAyMTg2NzMyMX0.aAsxOgBiyilSfWyQnBJRJ7c-07vHzTPvalPGkiW0OaU',
    );
  }
}
