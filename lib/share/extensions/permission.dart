import 'package:permission_handler/permission_handler.dart';

extension PermissionEx on Permission {
  static const List<String> _titles = <String>[
    'Calendar',
    'Camera',
    'Contacts',
    'Location',
    'Location Always',
    'Location When In Use',
    'Media Library',
    'Microphone',
    'Phone',
    'Photos',
    'Photos Add Only',
    'Reminders',
    'Sensors',
    'Sms',
    'Speech',
    'Storage',
    'Ignore Battery Optimizations',
    'Notification',
    'Access Media Location',
    'Activity Recognition',
    'Unknown',
    'Bluetooth',
    'Manage External Storage',
    'System Alert Window',
    'Request Install Packages',
    'AppTracking Transparency',
    'Critical Alerts',
    'Access Notification Policy',
  ];

  String get title => '${_titles[value]}';
}