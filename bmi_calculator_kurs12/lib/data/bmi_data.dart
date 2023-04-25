import 'dart:math';

class BmiData {
  static double bmiCalculotor(double height, int kg) {
    final bmiJoop = kg / pow(height / 100, 2);
    return bmiJoop;
  }

  static String? bmiResult(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Семизсиниз';
    } else if (bmiJoop > 18.5) {
      return 'Нормалдуусунуз';
    } else if (bmiJoop < 18.5) {
      return "Арыксыныз";
    }
    return null;
  }

  static String? qiveDescription(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Арыкташыныз керек';
    } else if (bmiJoop > 18.5) {
      return 'Сиздин дене салмагыныз нормалдуу. Азаматсыз!';
    } else if (bmiJoop < 18.5) {
      return 'Семиришиниз керек';
    }
    return null;
  }
}
