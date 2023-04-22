void main() {
  
  print('start of main');

  try {
    await final value = httpGet('http://somepage.com/cursos');
    print( value );
  } catch (err) {
    print('We have an error: $err');
  }
   
  print('end of main');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error in request';
  
  //return 'We have a value from the request';
    
}