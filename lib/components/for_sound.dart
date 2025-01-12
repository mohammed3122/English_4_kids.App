import 'package:audioplayers/audioplayers.dart';

class Item_Sound {
  static AudioPlayer? _audioPlayer; // اجعل المشغل قابلًا لأن يكون null
  static bool _isPlaying = false;
  static String? _currentSound;

  /// تهيئة مشغل الصوت إذا لم يكن موجودًا
  static void _initializePlayer() {
    if (_audioPlayer == null) {
      _audioPlayer = AudioPlayer();
    }
  }

  /// تشغيل الصوت
  static void playSound(String itemSound) async {
    _initializePlayer(); // تأكد من تهيئة المشغل

    if (_isPlaying && _currentSound == itemSound) {
      // إذا كان الصوت نفسه قيد التشغيل، قم بإيقافه
      await _audioPlayer!.stop();
      _isPlaying = false;
      _currentSound = null;
      return;
    }

    if (_isPlaying) {
      // إذا كان هناك صوت آخر قيد التشغيل، قم بإيقافه أولاً
      await _audioPlayer!.stop();
    }

    _isPlaying = true;
    _currentSound = itemSound;

    try {
      await _audioPlayer!.play(AssetSource(itemSound));

      // عند انتهاء الصوت
      _audioPlayer!.onPlayerComplete.listen((event) {
        _isPlaying = false;
        _currentSound = null;
      });
    } catch (e) {
      print('Error: $e');
      _isPlaying = false;
      _currentSound = null;
    }
  }

  /// إيقاف الصوت
  static void stopSound() {
    if (_isPlaying) {
      _audioPlayer?.stop();
      _isPlaying = false;
      _currentSound = null;
    }
  }

  /// تنظيف موارد الصوت
  static void disposeAudioPlayer() {
    if (_isPlaying) {
      _audioPlayer?.stop();
    }
    _audioPlayer?.dispose();
    _audioPlayer = null; // اجعل الكائن null للتأكد من إعادة التهيئة عند الحاجة
  }
}
