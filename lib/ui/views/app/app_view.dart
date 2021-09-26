import 'package:get/get.dart';
import '../../core/widget/space_red_widget.dart';
import 'app_view_controller.dart';
import '../../navigation/routes.dart';
import 'package:flutter/material.dart';
import '../../navigation/export_routes.dart';

class AppView extends GetView<AppViewController> {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            controller.name.value,
          ),
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.home,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Routes.home:
              return GetPageRoute(
                page: () => const HomeView(),
                binding: HomeViewControllerBindings(),
                routeName: Routes.home,
                transitionDuration: const Duration(microseconds: 0),
              );
            case Routes.lesson:
              return GetPageRoute(
                page: () => const LessonView(),
                binding: LessonViewControllerBindings(),
                routeName: Routes.lesson,
                transitionDuration:const Duration(microseconds: 0),
              );
              case Routes.revision:
              return GetPageRoute(
                page: () => RevisionView(),
                binding: RevisionViewControllerBindings(),
                routeName: Routes.revision,
                transitionDuration:const Duration(microseconds: 0),
              );
            default:
              return GetPageRoute(
                page: () => const HomeView(),
                binding: HomeViewControllerBindings(),
                routeName: Routes.home,
                transitionDuration: const Duration(microseconds: 0),
              );
          }
        },
      ),
      bottomSheet:const SpaceRedWidget(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.index.value,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Acceuil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: "Cours",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_sharp),
              label: "Révision",
            ),
          ],
          onTap: (index) {
            if (index != controller.index.value) {
              controller.onTapNaviBar(index);
              switch (index) {
                case 0:
                  Get.toNamed(Routes.home, id: 1);
                  break;
                case 1:
                  Get.toNamed(Routes.lesson, id: 1);
                  break;
                case 2:
                  Get.toNamed(Routes.revision, id: 1);
                  break;
              }
            }
          },
        ),
      ),
    );
  }
}
