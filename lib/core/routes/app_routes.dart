import 'package:go_router/go_router.dart';
import 'package:yusur_app/features/home/presentation/home_view.dart';

class AppRouter {
  AppRouter._();
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: AppRoutes.homeView,
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}

class AppRoutes {
  static const String onBoardingView = 'onBoarding';
  static const String loginView = 'login';
  static const String registerView = 'register';
  static const String homeView = 'home';
  static const String courseView = 'course';
  static const String profileView = 'profile';
  static const String bookingView = 'booking';
  static const String editCourseView = 'editCourse';
  static const String courseDetailView = 'courseDetail';
  static const String chooseCourseTypeView = 'chooseCourseType';
  static const String addCourseView = 'addCourse';
  static const String addDiplomaView = 'addDiploma';
  AppRoutes._();
}
