import 'package:command_example/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.viewmodel});

  final HomeViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    final cmd = viewmodel.loadUserCommand;
    return Scaffold(
      appBar: AppBar(title: const Text("Command Örnek")),
      body: Center(
        child: ListenableBuilder(
          listenable: cmd,
          builder: (context, child) {
            if (cmd.running) {
              return const CircularProgressIndicator();
            }
            if (cmd.error != null) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Kullanıcı yüklenirken hata oluştu"),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: cmd.execute,
                    child: const Text("Tekrar dene"),
                  ),
                ],
              );
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(cmd.value ?? "Henüz Kullanıcı Yok"),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: cmd.execute,
                  child: const Text("Kullanıcıyı yükle"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
