import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:tflite_flutter/tflite_flutter.dart';

class PredictController extends GetxController {
  //TODO: Implement PredictController
  RxInt currentStep = 0.obs;
  RxList<bool> answers = <bool>[].obs;
  FlutterTts flutterTts = FlutterTts();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    answers.value = List.filled(questions.length, true);
    flutterTts.setSpeechRate(0.5);
    flutterTts.speak(
        "Halo, selamat datang di prediksi kondisi paru-paru secara interaktif. Saya akan membantu anda dalam melakukan prediksi kondisi paru-paru. Saya akan membacakan pertanyaan dan anda cukup menjawab benar atau tidak. Pertanyaan akan dibacakan satu per satu, jika anda ingin melanjutkan ke pertanyaan berikutnya, cukup ketuk dua kali pada layar. Mari kita mulai.");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final List<String> questions = [
    'Apakah benar anda merokok?',
    'Apakah benar jari anda berwarna kuning?',
    'Apakah benar anda merasa cemas?',
    'Apakah benar anda perokok pasif?',
    'Apakah benar anda pernah mengalami penyakit kronis?',
    'Apakah benar anda mudah lelah?',
    'Apakah benar anda memiliki alergi?',
    'Apakah benar anda mengalami batuk mengi?',
    'Apakah benar anda mengalami sesak napas?',
    'Apakah benar anda nafas anda terasa pendek?',
    'Apakah benar anda mengalami nyeri dada?',
  ];

  void predictionDictationStep() async {
    if (currentStep.value < questions.length) {
      stt.SpeechToText speech = stt.SpeechToText();

      bool available = await speech.initialize(onStatus: (status) {
        print("Status: $status");
      }, onError: (error) {
        print("Error: $error");
      });
      // some time later...
      // speech.stop();

      flutterTts.setLanguage('id-ID');
      flutterTts.speak(questions[currentStep.value]);
      if (available) {
        speech.listen(
            onResult: (result) {
              if (result.finalResult) {
                if (result.recognizedWords.toLowerCase() == 'benar') {
                  answers[currentStep.value] = true;
                } else {
                  answers[currentStep.value] = false;
                }
                currentStep.value++;
              }
            },
            localeId: 'id-ID');
      } else {
        print("The user has denied the use of speech recognition.");
      }
    } else {
      flutterTts.speak(
          "Terima kasih, prediksi telah selesai. Silahkan tekan tombol mulai prediksi untuk melihat hasil prediksi kondisi paru-paru anda.");
    }
    update();
  }

  void startPrediction() async {
    print(answers);
    final options = InterpreterOptions();
    final interpreter = await Interpreter.fromAsset(
        'assets/tflite/model.tflite',
        options: options);
    final input = boolToInt(answers);
    final output = List.filled(3 * 1, 0).reshape([3, 1]);
    interpreter.run(input, output);
    print(output);
    Get.toNamed(Routes.RESULT_PREDICT);
  }

  List<int> boolToInt(List<bool> list) {
    List<int> result = [];
    for (var i = 0; i < list.length; i++) {
      if (list[i]) {
        result.add(1);
      } else {
        result.add(0);
      }
    }
    return result;
  }

  void back() {
    Get.back();
  }

  String getDateNow() {
    return DateTime.now().toString();
  }
}
