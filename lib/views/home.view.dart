import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/app.store.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    AppStore store = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(store.picture),
              Text(store.name),
              Text(store.email),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
                child: const Text("Mudar imagem"),
                onPressed: () {
                  String newPicture =
                      'https://png.pngtree.com/element_our/png/20181206/users-vector-icon-png_260862.jpg';
                  setState(() {
                    store.updatePicture(newPicture);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
