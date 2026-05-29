class CalculatorLogic {
  double _num1 = 0;
  double _num2 = 0;
  String _operador = '';
  String display = '0';

  void ingresarNumero(String numero) {
    if (display == '0') {
      display = numero;
    } else {
      display += numero;
    }
  }

  void ingresarOperador(String operador) {
    _num1 = double.parse(display);
    _operador = operador;
    display = '0';
  }

  void calcular() {
    _num2 = double.parse(display);
    switch (_operador) {
      case '+':
        display = (_num1 + _num2).toString();
        break;
      case '-':
        display = (_num1 - _num2).toString();
        break;
      case '*':
        display = (_num1 * _num2).toString();
        break;
      case '/':
        display = (_num1 / _num2).toString();
        break;
    }
  }

  void limpiar() {
    display = '0';
    _num1 = 0;
    _num2 = 0;
    _operador = '';
  }
}
