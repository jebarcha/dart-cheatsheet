void main() {
  
  print('start of main');
  
  httpGet('http://somepage.com/cursos').then( (value) {
    print(value);
  }).catchError ( (err) {
    print('Error: $err');
  });
  
  print('end of main');
  
}

Future<String> httpGet(String url) {
  
  return Future.delayed(const Duration(seconds: 1), () {
    
    throw 'Error in the http request';
    
    //return 'answer from the http request';
  
  });
    
}=++