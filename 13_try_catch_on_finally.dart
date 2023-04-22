void main() async {
  
  print('start of main');

  try {
    final value = await httpGet('http://somepage.com/cursos');
    print( 'success: $value' );
  } on Exception catch (err) {
   print ('we have an Exception: $err') ;
  } catch (err) {
    print('Oops something terrible happened: $err');
  } finally {
    print ('End of try - catch');
  }
   
  print('end of main');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No parameters in the url');
  
  //throw 'Error in request';
  
  //return 'We have a value from the request';
}