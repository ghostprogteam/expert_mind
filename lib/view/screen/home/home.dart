import 'package:expert_mind/core/shared/color.dart';
import 'package:flutter/material.dart';
import '../../../core/shared/theming/text_style.dart';
import '../../../model/home/list_project_model.dart';
import '../../widget/home_widget.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listProject = [
      {"name": "مشروع توصيل طلبات مطعم", "image": "assets/images/AppFood.jpg"},
      {"name": "مشروع أدارة الملحظات", "image": "assets/images/AppNote.jpg"}
    ];
    List<Widget> listProjectWidget = [
      for (int i = 0; i < listProject.length; i++) ...[
        TopSclorProjectHome(listProject: listProject, i: i)
      ],
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            SearchInHomePage(),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: [
                  PackageSclorWithDetails(listProjectWidget: listProjectWidget),
                  SizedBox(
                    height: 15,
                  ),
                  TeacherSclorWithDetails(),
                  SizedBox(
                    height: 10,
                  ),
                  CoursesSclorWithDetailsWithCategories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar AppBarLayout(String namePage) {
  return AppBar(
    foregroundColor: ProjectColors.mainColor,
    elevation: 0,
    leading: Image.asset(
      'assets/images/app-icon.png',
      fit: BoxFit.cover,
    ),
    title: Text(
      '${namePage}',
      style: TextStyles.font18BlackW500,
    ),
    actions: [
      Padding(
        padding: const EdgeInsetsDirectional.only(end: 15),
        child: Icon(Icons.exit_to_app_rounded),
      )
    ],
  );
}
