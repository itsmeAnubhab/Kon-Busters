import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/login_page_org.dart';
import '../pages/main_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_page.dart';
import '../pages/sign_up_page.dart';
import '../pages/users_page.dart';
import '../pages/verify_page.dart';

class AppRoutes {
  static final pages = {
    '/users': (context) => UsersPage(),
    '/login': (context) => LoginPage(),
    '/loginorg': (context) => LoginOrgPage(),
    '/home': (context) => HomePage(),
    '/search': (context) => SearchPage(),
    '/signup': (context) => SignUp(),
    '/main': (context) => MainPage(),
    '/profile': (context) => ProfilePage(),
    '/edit_profile': (context) => EditProfilePage(),
    '/verify': (context) => VerifyPage(),
  };

  static const users = '/users';
  static const login = '/login';
  static const loginorg = '/loginorg';
  static const home = '/home';
  static const main = '/main';
  static const profile = '/profile';
  static const editProfile = '/edit_profile';
  static const signup = '/signup';
  static const favorite = '/favorite';
  static const search = '/search';
  static const verify = '/verify';
}
