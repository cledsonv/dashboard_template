enum KeyPreferences {
  ///Escolher qual o tema
  isThemeLight(defaultValue: true),

  ///Token
  token(defaultValue: ''),

  ///isLogged
  isLogged(defaultValue: false);

  final dynamic defaultValue;

  const KeyPreferences({this.defaultValue});
}
