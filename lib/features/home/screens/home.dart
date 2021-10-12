import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/features/feature.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/resources/resource.dart';
import '../../../widgets/widget.dart';
import '../../../share/share.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: Column(
        children: [
          CommonAppBar(title: 'Foto'),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: SeparatedColumn(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                separatorBuilder: () => SizedBox(height: 16),
                children: [
                  AppButton(
                    onPressed: () {
                      pushNamed(SelectImageScreen.route);
                    },
                    title: 'New Project',
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Text('Load Projects'),
                  Container(
                    height: 500,
                    child: BlocBuilder<ProjectCubit, ProjectState>(
                      builder: (context, state) {
                        List<EditorModel> projects = state.projects ?? [];
                        return ListView.separated(
                          itemCount: projects.length,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 8);
                          },
                          itemBuilder: (context, index) {
                            final model = projects[index];
                            return Container(
                              height: 80,
                              child: Dismissible(
                                key: ValueKey<DateTime>(
                                    model.createTime ?? DateTime.now()),
                                onDismissed: (direction) {
                                  BlocProvider.of<ProjectCubit>(context)
                                      .onDeleteProject(model);
                                },
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.restore_from_trash),
                                    ],
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    pushNamed(EditorScreen.route,
                                        arguments: {'model': model});
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(8),
                                  ),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.file(
                                            File(model.image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            '${model.createTime!.toDate('yyyy-MM-dd hh:mm:ss')}',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
