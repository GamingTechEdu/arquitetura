import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/home_controller.dart';
import '../../../../models/post_model.dart';
import '../../../../repositories/home_repository.dart';
import '../../../../repositories/home_repository_imp.dart';
import '../../../../repositories/home_repository_mock.dart';
import '../../../../service/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    _controller.fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        actions: [
          IconButton(
            onPressed: () {
              PrefsService.logout();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login', (_) => true);
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              title: Text(list[idx].title),
              trailing: Icon(Icons.arrow_forward),
              leading: Text(
                list[idx].id.toString(),
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/details', arguments: list[idx]);
              },
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}
