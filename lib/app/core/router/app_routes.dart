enum Routes {
  home(name: '/home'),
  sessions(name: '/sessions'),
  journal(name: '/journal'),
  statistics(name: '/statistics'),
  settings(name: '/settings');

  const Routes({
    required this.name,
  });

  final String name;
}
