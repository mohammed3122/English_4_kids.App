import 'package:audioplayers/audioplayers.dart';

final AudioPlayer _audioPlayer = AudioPlayer();
bool _isPlaying = false; // لمعرفة حالة الصوت
String? _currentSound; // لمعرفة الصوت المشغل حاليًا

void playSound(String itemSoudn) async {
  if (_isPlaying && _currentSound == itemSoudn) {
    // إذا كان الصوت نفسه قيد التشغيل، قم بإيقافه
    await _audioPlayer.stop();
    () {
      _isPlaying = false;
      _currentSound = null;
    };
    return;
  }

  if (_isPlaying) {
    // إذا كان هناك صوت آخر قيد التشغيل، قم بإيقافه أولاً
    await _audioPlayer.stop();
  }

  try {
    () {
      _isPlaying = true;
      _currentSound = itemSoudn;
    };

    await _audioPlayer.play(AssetSource(itemSoudn));

    _audioPlayer.onPlayerComplete.listen((event) {
      () {
        _isPlaying = false;
        _currentSound = null;
      };
    });
  } catch (e) {
    print('Error: $e');
    () {
      _isPlaying = false;
      _currentSound = null;
    };
  }
}
