class UserRepository {

Future<String> fetchUserName() async {
  await Future.delayed(const Duration(seconds: 5));
  return "Ahmet çakar";
}



}

