
class EmailAddress {
  EmailAddress(this.address){
    if (address.isEmpty){
      throw FormatException("Email address must not be empty");

    }
    if (!address.contains('@')){
      throw FormatException("$address doesn't contain @");
    }
  }
  final String address;

  @override
  String toString() => address;
}






void main(){

  try{
  print(EmailAddress('me@example.com'));
  print(EmailAddress(''));
  print(EmailAddress('meexample.com'));
} on FormatException catch(e){
  print(e);
}
}