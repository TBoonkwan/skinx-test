import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigConstants {
  static String flavor = 'flavor';
  static String endpoint = 'endpoint';
  static String clientId = 'client_id';
  static String clientSecret = 'client_secret';

  static String mockEnv = 'mock';
  static String prodEnv = 'prodEnv';

  static String customUriScheme = 'my.skinx.app';
  static String redirectUri = 'my.skinx.app://callback';
}

class AppConfig {
  static bool isMockEnv =
      dotenv.get(ConfigConstants.flavor).toString() == ConfigConstants.mockEnv;

  static String getEnvironmentInstanceName() {
    if (isMockEnv) {
      return ConfigConstants.mockEnv;
    } else {
      return ConfigConstants.prodEnv;
    }
  }
}
