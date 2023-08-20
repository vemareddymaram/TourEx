import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://yvlzeeljtiekbzusdfyd.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2bHplZWxqdGlla2J6dXNkZnlkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI1MTUyNTMsImV4cCI6MjAwODA5MTI1M30.BcvBP-2qJEHzoUaTn7z8K0ivUJW0emVkSo1hlWJG1Nc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
