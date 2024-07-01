import 'dart:math';

final ando = ['፩', '፪', '፫', '፬', '፭', '፮', '፯', '፰', '፱'];
final asro = ['፲', '፳', '፴', '፵', '፶', '፷', '፸', '፹', '፺'];
final elfo = ['፻', '፼'];
final elfyosh = ['፻፼፼፼', '፼፼፼', '፻፼፼', '፼፼', '፻፼', '፼', '፻', ''];

int numConverterToArab(String number) {
  var _result = 0,
      _before_elf = '',
      _expo = 14,
      _product = pow(10, _expo),
      _asru_we_andu = '',
      _prev = number;
  if (number.contains(elfo[0]) && number.length > 2) {
    for (var _i = 0; _i < elfyosh.length; _i++) {
      if (_i < elfyosh.length - 1) {
        if (number.contains(elfyosh[_i])) {
          _before_elf = number.substring(
              0, number.indexOf(elfyosh[_i]) + elfyosh[_i].length);
          number = number
              .substring(number.indexOf(elfyosh[_i]) + elfyosh[_i].length);
          if (_before_elf.length - elfyosh[_i].length == 2) {
            _asru_we_andu = _before_elf.substring(0, 2);
            _result += ((((asro.indexOf(_asru_we_andu[0]) + 1) * 10) +
                        (ando.indexOf(_asru_we_andu[1]) + 1)) *
                    _product)
                .toInt();
          } else if (_before_elf.length - elfyosh[_i].length == 1) {
            _asru_we_andu = _before_elf[0];
            for (var _h = 0; _h < ando.length; _h++) {
              if (_asru_we_andu == ando[_h]) {
                _result += ((_h + 1) * _product).toInt();
                break;
              } else if (_asru_we_andu == asro[_h]) {
                _result += ((_h + 1) * 10 * _product).toInt();
                break;
              }
            }
          } else {
            _result += (_product).toInt();
          }
        }
        _expo -= 2;
        _product = pow(10, _expo);
      } else if (_i == elfyosh.length - 1) {
        if (number.length == 2) {
          _result += (((asro.indexOf(number[0]) + 1) * 10) +
              (ando.indexOf(number[1]) + 1));
        } else if (number.length == 1) {
          for (var _h = 0; _h < ando.length; _h++) {
            if (number == ando[_h]) {
              _result += (_h + 1);
              break;
            } else if (number == asro[_h]) {
              _result += (_h + 1) * 10;
              break;
            }
          }
        }
      }
    }
  } else {
    if (number.length == 2) {
      _result = (((asro.indexOf(number[0]) + 1) * 10) +
          (ando.indexOf(number[1]) + 1));
    } else if (number.length == 1) {
      for (var _h = 0; _h < ando.length; _h++) {
        if (number == ando[_h]) {
          _result = (_h + 1);
          break;
        } else if (number == asro[_h]) {
          _result = (_h + 1) * 10;
          break;
        }
      }
    }
  }
  switch (_prev) {
    case '፻፼፼፼':
      _result = (pow(10, 14)).toInt();
      break;
    case '፼፼፼':
      _result = (pow(10, 12)).toInt();
      break;
    case '፻፼፼':
      _result = (pow(10, 10)).toInt();
      break;
    case '፼፼':
      _result = (pow(10, 8)).toInt();
      break;
    case '፻፼':
      _result = (pow(10, 6)).toInt();
      break;
    case '፼':
      _result = (pow(10, 4)).toInt();
      break;
    case '፻':
      _result = (pow(10, 2)).toInt();
      break;
  }
  return _result;
}

String numConverterToGeez(int number) {
  var _numGeez = '',
      _num1 = '',
      _num2 = '',
      _appendix = '',
      _numstr = number.toString(),
      _sizu = 0,
      _telie = _numstr;

  if (_numstr.length % 2 == 0) {
    _sizu = _numstr.length ~/ 2;
    print(_sizu);
  } else {
    _sizu = (_numstr.length ~/ 2) + 1;
    print(_sizu);
  }

  for (var _i = 1; _i <= _sizu; _i++) {
    switch (_i) {
      case 1:
        _appendix = '';
        break;
      case 2:
        _appendix = elfo[0];
        break;
      case 3:
        _appendix = elfo[1];
        break;
      case 4:
        _appendix = elfo[1] + elfo[0];
        break;
      case 5:
        _appendix = elfo[1] + elfo[1];
        break;
      case 6:
        _appendix = elfo[1] + elfo[1] + elfo[0];
        break;
      case 7:
        _appendix = elfo[1] + elfo[1] + elfo[1];
        break;
      case 8:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[0];
        break;
      case 9:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[1];
        break;
      case 10:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[0];
        break;
      case 11:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1];
        break;
      case 12:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[0];
        break;
      case 13:
        _appendix = elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1];
        break;
      case 14:
        _appendix =
            elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[0];
        break;
      case 15:
        _appendix =
            elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1] + elfo[1];
        break;
      case 16:
        _appendix = elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[0];
        break;
      case 17:
        _appendix = elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1];
        break;
      case 18:
        _appendix = elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[1] +
            elfo[0];
        break;
    }

    _num1 = _telie[_telie.length - 1];
    if (_telie.length == 1) {
      if (_num1 == '0') _numGeez += 'ቦልአ';
      _num2 = '0';
    } else {
      _num2 = _telie[_telie.length - 2];
    }

    if (_num1 == '0' && _num2 == '0') {
      _appendix = '';
    }

    _numGeez += _appendix;

    if (_num1 == '0') {
      _numGeez += '';
    } else {
      if (_i == _sizu && _i > 1 && _num2 == "0" && _num1 == "1") {
        _numGeez += '';
      } else {
        _numGeez += ando[int.parse(_num1) - 1];
      }
    }

    if (_num2 == '0') {
      _numGeez += '';
    } else {
      _numGeez += asro[int.parse(_num2) - 1];
    }

    if (_telie.length != 1) _telie = _telie.substring(0, _telie.length - 2);
  }

  var _answer = '';

  for (var _h = 0; _h < _numGeez.length; _h++) {
    _answer += _numGeez[_numGeez.length - 1 - _h];
  }

  return _answer;
}
