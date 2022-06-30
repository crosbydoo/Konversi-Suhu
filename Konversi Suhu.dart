//library dart
import 'dart:io';


//variable suhu
var celcius;
var reamur;
var fahrenheit;
var kelvin;


void main(){
  menu();
}


// function menu
menu(){
    print('APP KONVERSI SUHU \n1.Celcius \n2.Fahrenheit \n3.Reamur \n4.Kelvin');
    stdout.write('pilih menu : ');
    var menu = int.parse(stdin.readLineSync()!);
    if (menu == 1) {
    stdout.write("Masukkan Suhu(Celcius) : ");
    celcius     = int.parse(stdin.readLineSync()!);
    fahrenheit  = (celcius*(9/5)) + 32 ;
    reamur      = celcius*(4/5);
    kelvin      = celcius + 273;

    print(celcius.toString()+'°C');
    print(fahrenheit.toStringAsFixed(1)+'°F');
    print(reamur.toStringAsFixed(1)+'°R');
    print(kelvin.toStringAsFixed(1)+'°K');
  }
  else if(menu == 2){
    stdout.write("Masukkan Suhu(Fahrenheit) : ");
    fahrenheit   = int.parse(stdin.readLineSync()!);
    celcius      = (fahrenheit - 32) * 5/9 ;
    reamur       = (fahrenheit - 32) * 4/9;
    kelvin       = (fahrenheit - 32) * 5/9 + 273;

    print(fahrenheit.toString()+'°F');
    print(celcius.toStringAsFixed(1)+'°C');
    print(reamur.toStringAsFixed(1)+'°R');
    print(kelvin.toStringAsFixed(1)+'°K');

  }
  else if(menu == 3){
    stdout.write("Masukkan Suhu(Reamur) : ");
    reamur      = int.parse(stdin.readLineSync()!);
    celcius     = reamur*(5/4);
    fahrenheit  = (reamur*(9/4))+32;
    kelvin      = (reamur*(5/4))+273;

    print(reamur.toString()+'°R');
    print(celcius.toStringAsFixed(1)+'°C');
    print(fahrenheit.toStringAsFixed(1)+'°F');
    print(kelvin.toStringAsFixed(1)+'°K');
  }
  else if(menu == 4){
    stdout.write("Masukkan Suhu(Kelvin) : ");
    kelvin      = int.parse(stdin.readLineSync()!);
    celcius     = kelvin - 273;
    fahrenheit  = (kelvin - 273*(9/5)+32);
    reamur      = (kelvin - 273)*(4/5);

    print(kelvin.toString()+'°K');
    print(celcius.toStringAsFixed(1)+'°C');
    print(fahrenheit.toStringAsFixed(1)+'°F');
    print(reamur.toStringAsFixed(1)+'°R');
  }

  return back();
}

//function back
back(){
    stdout.write('konversi lagi? yes|no : ');
    var back = stdin.readLineSync();
    if (back == 'yes') {
      return menu();
    }else{
      print('Terima Kasih');
    }
}


//Copyright oleh Ristu Mactavish