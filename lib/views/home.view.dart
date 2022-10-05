import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/app.store.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
