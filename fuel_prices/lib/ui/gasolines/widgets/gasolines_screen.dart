import 'package:flutter/material.dart';
import 'package:fuel_prices/domain/models/gasonline/gasoline.dart';
import 'package:fuel_prices/ui/gasolines/view_models/gasolines_viewmodel.dart';
import 'package:provider/provider.dart';

class GasolinesScreen extends StatefulWidget {
  const GasolinesScreen({super.key});

  @override
  State<GasolinesScreen> createState() => _GasolinesScreenState();
}

class _GasolinesScreenState extends State<GasolinesScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<GasolinesViewmodel>();
    final cmd = vm.loadGasolinesCommand;

    return Scaffold(
      appBar: AppBar(title: const Text("Gasoline Prices")),
      body: Center(
        child: AnimatedBuilder(
          animation: cmd,
          builder: (context, child) {
            if (cmd.running) {
              return const CircularProgressIndicator();
            }
            if (vm.errorMessage != null) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    vm.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: cmd.execute,
                    child: const Text("Tekrar Dene"),
                  ),
                ],
              );
            }
            if (vm.gasolines.isEmpty) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Henüz veri yok"),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => cmd.execute(),
                    child: const Text("Fiyatları Yükle"),
                  ),
                ],
              );
            }

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: vm.gasolines.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Gasoline item = vm.gasolines[index];

                      return ListTile(
                        title: Text(item.marka),
                        subtitle: Text("Benzin ${item.benzin}"),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
