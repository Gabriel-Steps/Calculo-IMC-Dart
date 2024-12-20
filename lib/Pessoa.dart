// ignore_for_file: unused_local_variable

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String calcularIMC(double? _peso, double? _altura) {
    try {
      if (_peso == null || _altura == null || _altura <= 0 || _peso <= 0) {
        return "Dados inválidos: peso e altura devem ser positivos e não nulos.";
      }

      double result = _peso / (_altura * _altura);
      result = double.parse(result.toStringAsPrecision(2));

      if (result < 16) {
        return '${result} - Magreza Grave';
      } else if (result >= 16 && result < 17) {
        return '${result} - Magreza Moderada';
      } else if (result >= 17 && result < 18.5) {
        return "${result} - Magreza Leve";
      } else if (result >= 18.5 && result < 25) {
        return "${result} - Saudável";
      } else if (result >= 25 && result < 30) {
        return "${result} - Sobrepeso";
      } else if (result >= 30 && result < 35) {
        return "${result} - Obesidade Grau 1";
      } else if (result >= 35 && result < 40) {
        return "${result} - Obesidade Grau 2 (severa)";
      } else {
        return "${result} - Obesidade Grau 3 (Mórbida)";
      }
    } catch (e) {
      return "Erro no cálculo do IMC: ${e.toString()}";
    }
  }

  @override
  String toString() {
    return 'Nome: ${_nome} | Altura: ${_altura} | Peso: ${_peso}';
  }

  double? getPeso() {
    return _peso;
  }

  double? getAltura() {
    return _altura;
  }
}
