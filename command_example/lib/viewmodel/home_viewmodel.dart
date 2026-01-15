import 'package:command_example/command/simple_command.dart';
import 'package:command_example/data/user_repository.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  HomeViewmodel(this._repo){
    loadUserCommand = SimpleCommand<String>(_loadUser);
  }

  final UserRepository _repo;
  late SimpleCommand<String> loadUserCommand;

  Future<String> _loadUser() async {
    final name = await _repo.fetchUserName();
    return name;
  }
}
