// In menu_controller.dart
class MenuControlle {
  final Function onProfilePressed;
  final Function onLogoutPressed;

  MenuControlle({
    required this.onProfilePressed,
    required this.onLogoutPressed,
  });

  void handleMenuSelection(String? value) {
    if (value == 'Profile') {
      onProfilePressed();
    } else if (value == 'Logout') {
      onLogoutPressed();
    }
  }
}
